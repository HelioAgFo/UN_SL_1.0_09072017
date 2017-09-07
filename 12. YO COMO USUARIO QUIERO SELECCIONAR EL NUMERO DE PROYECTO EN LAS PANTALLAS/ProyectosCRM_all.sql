 CREATE PROCEDURE [dbo].[ProyectosCRM_all]
	@parm1 varchar( 15 )
AS
 Select * from xProyectosCRM where ProjectID like @parm1 order by ProjectID

