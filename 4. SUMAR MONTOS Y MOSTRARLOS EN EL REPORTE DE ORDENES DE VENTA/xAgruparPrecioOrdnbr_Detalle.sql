CREATE view [dbo].[xAgruparPrecioOrdnbr_Detalle] as
select t.ordnbr,t.LineRef
,(select sum(t2.S4Future09) from SOLine t2 where t2.LineRef <= t.LineRef and t2.OrdNbr = t.OrdNbr) as grp
,t.s4future09,t.CuryTotOrd
--,(select min(LineRef) from soline t3 where )
from soline t --where t.OrdNbr = '005292'