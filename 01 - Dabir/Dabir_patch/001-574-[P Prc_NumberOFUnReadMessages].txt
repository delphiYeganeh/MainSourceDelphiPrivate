BEGIN TRANSACTION
GO
IF EXISTS ( SELECT 1
            FROM   sysobjects 
            WHERE  id = object_id(N'[dbo].[Prc_NumberOFUnReadMessages]') 
                   and OBJECTPROPERTY(id, N'IsProcedure') = 1 )
BEGIN
    DROP PROCEDURE [dbo].[Prc_NumberOFUnReadMessages]
END
GO

CREATE  procedure [dbo].[Prc_NumberOFUnReadMessages]
				(
				  @SecretariatID int = 0,
				  @OrgID         int = 3441
				)
AS
--DECLARE @SecretariatID int = 0
--DECLARE @OrgID int  = 3441
SELECT 
	 LetterID, 
	 OrgID, 
	 MAX(ID) MaxRcID 
	 INTO #tmpRC 
FROM dbo.ReCommites                          
WHERE OrgID = @OrgID
GROUP BY LetterID, OrgID     


SELECT 
   @OrgID,
   COUNT(*) CNT
FROM (
		SELECT TOP 100 PERCENT
			   RC.viewdate,
			   L.LetterID,
			   L.SignerID, 
			   L.IndicatorID, 
			   L.MYear,
			   L.subjectid, 
			   L.SecretariatID, 
			   L.Letter_Type,                                                    
			   L.letterformat, 
			   L.IncommingNO, 
			   L.Incommingdate, 
			   L.ClassificationID, 
			   L.UrgencyID,  
			   dbo.fn_trunc(L.memo,30) AS MemoLetter , 
			   L.Tostaffer,
			   L.SentLetterID,
			   L.AttachTitle, 
			   L.NumberOfAttachPages, 
			   L.NumberOfPage, 
			   L.ReceiveTypeID, 
			   L.UserID, 
			   dbo.RetroactionNo_LIST  (L.LetterID) AS RetroactionNo /*L.RetroactionNo*/,                             
			   L.UserMemo, 
			   L.RegistrationDate, 
			   L.toorgid,
			   L.fromorgid,
			   dbo.FollowLetterNo_LIST (L.LetterID) AS FollowLetterNo/*L.FollowLetterNo*/,  
			   --dbo.fn_trunc(L.LetterRecommites,30) ,
			   L.finalized,L.CenterNo,
			   L.CenterDate,
			   L.templateID,
			   L.headerID,
			   L.registrationTime,
			   L.fromstaffer,
			   L.sendStatusID,
			   L.LastUpdate,
			   L.UserTableID,             
			   CAST(indicatorid AS nvarchar(500)) InnerNo, 
			   PRC.OrgID,  
			   RC.ParentId, 
			   dbo.fn_trunc(RC.Paraph,30)  Paraph, 
			   RC.RecommiteDate, 
			   RC.RecommiteTime,  
			   RC.Proceeded, 
			   RC.ProceedDate, 
			   RecommiteTypes.id ReType,
			   RecommiteTypes.Title RecommitTypeTitle,                         
			   CASE WHEN fo.title IS NULL THEN 0 ELSE 1 END IsInner, 
			   ISNULL(ISNULL(FO.Title,foo.title),TTO.title) RecommiterTitle,
			   tto.title sendertitle,RC.recommiteid,                          
			   RC.id,  
			   RC.IsSecure, 
			   RC.StaffMemo, 
			   ISNULL(incommingno,indicatorid)  Yincommingno,
			   Secretariats.PreCode,
			   RC.IsCopy,
			   RC.IsCopy_In_Dabir,
			   RC.SentToDabir                        ,
			   dbo.has_Page(L.letterid) has_Page,        
			   dbo.has_WordPage(L.letterid) has_WordPage,                          
			   dbo.has_file(L.letterid) has_file, 
			   ISNULL(RC.DeadLineToint-35689,0) DeadLineDays,
			   --RTRIM(LTRIM(RC.ViewDate)),
			   RC.Deadlinedate   DeadLineDate ,
			   ' ' ChildParaph , 
			   ISNULL(ISNULL(FO.Title,foo.title),TTO.title)  ChildOrg ,  
			   RC.ActionTypeID ActionTypeID         , 
			   (dbo.FN_GetUserRecomCount(@OrgID, L.LetterID)) as UserRecomCount   , 
			   RC.IsAnswer , 
			   RC.ISFollowup , 
			   RC.Erja_Or_Answer_Date, 
			   'White' ColorFlag , 
			   (CASE WHEN dbo.FN_GetUserRecomCount(@OrgID, L.LetterID) > 1 THEN L.Memo +' ('+ CAST(dbo.FN_GetUserRecomCount(@OrgID, L.LetterID) AS varchar)+')' 
			   ELSE L.Memo END) AS MemoAndRecomUserCount , 
			   dbo.Has_Sign(L.letterid) AS Has_Sign, 
			   dbo.InnerNo(L.LetterID,l.Letter_Type) InnerNo2,
			   dbo.HasLetterForms(L.LetterID) HasLetterForms       ,
			   (
				SELECT 
					anjam_shod 
				FROM letter 
				WHERE letter.LetterID = RC.LetterID
			   ) AS anjam_shod_status       
		FROM ReCommites RC       
		INNER JOIN #tmpRC 
		   ON RC.LetterID = #tmpRC.LetterID 
		   AND RC.OrgID = #tmpRC.OrgID 
		   AND RC.ID = #tmpRC.MaxRcID      
		INNER JOIN Letter L 
		   ON RC.LetterID = L.LetterID              
		INNER JOIN Secretariats  
		   ON Secretariats.Secid = L.SecretariatID      
		LEFT JOIN LetterTypes 
		   ON L.Letter_Type=LetterTypes.ID              
		LEFT JOIN ReCommites PRC 
		   ON RC.LetterID = PRC.LetterID 
		   AND PRC.ID = RC.ParentId  
		   AND PRC.type = RC.type      
		LEFT JOIN ReCommites rRC 
		   ON RrC.LetterID = L.LetterID 
		   AND rRC.Id=1 
		   AND rrc.type<>1      
		LEFT JOIN FromOrganizations FoO 
		   ON FoO.ID = rRC.OrgID 
		   AND rrc.orgid <> @OrgID            
		LEFT JOIN FromOrganizations FO 
		   ON FO.ID = PRC.OrgID              
		LEFT JOIN FromOrganizations TTO 
		   ON TTO.ID = L.ToOrgID               
		LEFT JOIN FromOrganizations Receiver 
		   ON Receiver.ID = L.FromOrgID               
		INNER JOIN RecommiteTypes 
		   ON RC.Type = RecommiteTypes.ID 
		WHERE   1=1--(RC.Finallized=1) 
			AND (RC.OrgID = @OrgID)  
			AND (RC.Proceeded = 0)  
			--AND  L.myear>= 97 
			AND (L.LetterFormat =1) 
			--AND (RC.RecommiteDate between '1397/01/01' AND '1397/09/14') 
			AND (SecretariatID = @SecretariatID OR @SecretariatID = 0) 
			--AND (ISNULL(RC.DeadLineToint ,35689)  -35689 )<= 0 
			AND ISNULL(rc.viewdate,'0') = '0'
		--ORDER BY  
		--    RC.recommitedate DESC,
		--	L.indicatorid    DESC

     )SUB1
DROP TABLE #tmpRC
GO

COMMIT
GO