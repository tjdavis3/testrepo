-- AddComment adds a comment to the provided system object
-- Parameters:
--   sid - The ID
--   comment - The comment to add
--   userid - The user who created the comment
CREATE or ALTER PROCEDURE [dbo].[AddComment]
	@sid int,
	@comment varchar(max),
	@userid int

AS

INSERT INTO Comments (SID, CommentText, CommentDate, AuthorID)
	VALUES (@sid, 'SP Added: ' + @comment, GetDate(), @userid)
