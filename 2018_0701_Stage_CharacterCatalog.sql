
/* 
	Contains list of all characters fetched 
	from the Marvel API 
*/
-- drop table STAGE.CharacterCatalog; 
-- truncate table STAGE.CharacterCatalog; 
CREATE TABLE STAGE.CharacterCatalog ( 
	CharacterId BIGINT, 
	CharacterName varchar(250), 
	CharacterDescription varchar(max), 
	ComicId BIGINT, 
	UniqueId uniqueidentifier default newid() 

); 
GO 