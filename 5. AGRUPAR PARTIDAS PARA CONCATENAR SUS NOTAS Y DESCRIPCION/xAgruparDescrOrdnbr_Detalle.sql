
CREATE view [dbo].[xAgruparDescrOrdnbr_Detalle] as
select t.ordnbr,t.LineRef
,(select sum(t2.S4Future10) from SOLine t2 where t2.LineRef <= t.LineRef and t2.OrdNbr = t.OrdNbr) as grp
,t.s4future10,t.Descr,t.NoteId
--,(select min(LineRef) from soline t3 where )
from soline t --where t.OrdNbr = '005292'