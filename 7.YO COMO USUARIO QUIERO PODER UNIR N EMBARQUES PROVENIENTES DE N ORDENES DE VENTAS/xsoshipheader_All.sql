


CREATE PROCEDURE [dbo].[xShoshipheader_All]
  @parm1 varchar(10)
  --@parm2 varchar(10) 
  As

  --'GD302' --
SELECT * FROM SOSHIPHEADER WHERE custid = @parm1 and status = 'O'


