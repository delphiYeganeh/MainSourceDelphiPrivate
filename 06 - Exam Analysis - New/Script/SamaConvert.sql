use exam
go

INSERT INTO Faculty (FacultyTitle ,FacultyCode) 
SELECT TITLE,CODE FROM behdasht..lt38 where code not in (select isnull(FacultyCode,'0') from Faculty)

INSERT INTO EducationGroup (EducationGroupCode ,EducationGroupTitle,FacultyID)

select code,name,isnull(FacultyID,0)
from behdasht..lt35  lt35
left join Faculty on Faculty.FacultyCode=lt35.PlaceCode
where code not in (select isnull(EducationGroupCode,'0') from EducationGroup)

INSERT INTO Major (MajorCode ,MajorTitle ,EducationGroupID) 
select code,Title,isnull(EducationGroupID,0)
from behdasht..lt66 lt66
left join EducationGroup on EducationGroup.EducationGroupCode=lt66.GroupA
where code not in (select isnull(MajorCode,'0') from Major)


INSERT INTO Applicant 
 (ApplicantCode ,FirstName ,LastName ,FullName ,MajorID ,Termcode ,FatherName,pic)
select m.stno,substring(name,charindex('-',name)+1,100) Firstname, substring(name,1,charindex('-',name)-1) Lastname,name,MajorID,TermCode,nameP,SI.pic
from behdasht..maininfo m
left join behdasht..StdImage SI on m.STNO=si.Stno
left join Major on m.Reshte =Major.MajorCode
where m.stno collate Arabic_CI_AS not in (select ApplicantCode from Applicant )
and name like '%-%'

INSERT INTO Applicant
 (ApplicantCode ,FirstName ,LastName ,FullName ,MajorID ,Termcode ,FatherName,pic)
select m.stno,' ' Firstname, name Lastname,name,MajorID,TermCode,nameP,SI.pic
from behdasht..maininfo m
left join behdasht..StdImage SI on m.STNO=si.Stno
left join Major on m.Reshte =Major.MajorCode
where m.stno collate Arabic_CI_AS not in (select ApplicantCode from Applicant )
and name not like '%-%'
go
use behdasht
go

declare 
@ApplicantCode varchar(20),
@ApplicantFullname nvarchar(80),
@CourseCode varchar(15),
@CourseTitle nvarchar(60),
@CourseGroup varchar(5),
@MajorCode varchar(20),
@majorTitle nvarchar(60),
@TermCode char(3),
@TeacherCode varchar(20),
@TeacherFullname nvarchar(80),
@EntranceTerm char(3),
@Ftermcode char(3),
@TTermCode char(3)


set @Ftermcode= '801'
set @TTermCode='902'


    declare MC cursor for  
        select maininfo.stno COLLATE Arabic_CI_AS,maininfo.name COLLATE Arabic_CI_AS,sus.lessoncode COLLATE Arabic_CI_AS,
lt7.name COLLATE Arabic_CI_AS CourseTitle,cast(sus.lessongroup as nvarchar),
lt66.code Majorcode ,Lt66.title COLLATE Arabic_CI_AS majorTitle,lt55.doncode,donbin.Title COLLATE Arabic_CI_AS Teachertitle,
sus.termcode COLLATE Arabic_CI_AS,maininfo.termcode COLLATE Arabic_CI_AS entranceTerm
from sus
LEFT join maininfo  on maininfo.stno=sus.stno
LEFT join lt7 on lt7.code=sus.lessoncode
LEFT join lt66 on maininfo.reshte=lt66.code
left join (select  lessoncode,Lessongroup,Max(doncode) donCode from lt55 where termcode between @FTermcode and @TTermCode 
group by lessoncode,lessongroup) lt55 
                       on lt55.lessoncode=sus.lessoncode and sus.lessongroup=lt55.lessongroup
left join donbin on lt55.doncode=donbin.code

where sus.Termcode between @FTermcode and @TTermCode 


     open  MC 
     fetch next from MC into @ApplicantCode,@ApplicantFullname,@CourseCode,@CourseTitle,@CourseGroup,
@MajorCode,@majorTitle,@TeacherCode,@TeacherFullname,@TermCode,@EntranceTerm 
     while @@Fetch_Status=0 
      begin

	
  exec examTuraj..imp_TotalEducation @ApplicantCode,@ApplicantFullname,@CourseCode,@CourseTitle,@CourseGroup,
@MajorCode,@majorTitle,@TermCode,@TeacherCode,@TeacherFullname,@EntranceTerm  
 
     fetch next from MC into @ApplicantCode,@ApplicantFullname,@CourseCode,@CourseTitle,@CourseGroup,
@MajorCode,@majorTitle,@TeacherCode,@TeacherFullname,@TermCode,@EntranceTerm 
      end 
    
     close MC
     deallocate MC





