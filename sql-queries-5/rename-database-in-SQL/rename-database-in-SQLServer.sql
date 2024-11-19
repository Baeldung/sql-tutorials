--Setting Database in Single User Mode
ALTER DATABASE University SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

--Renaming University Database
ALTER DATABASE University MODIFY NAME = NewUniversity;

--Reverting Changes to the Multi-User Mode
ALTER DATABASE NewUniversity SET MULTI_USER;
