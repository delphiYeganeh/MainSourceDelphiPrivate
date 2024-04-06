update Exam..Applicant
set Exam..Applicant.Pic=(select pic from Behdasht..StdImage
							  where Exam..Applicant.ApplicantCode=Behdasht..StdImage.Stno collate Arabic_CI_AS )
