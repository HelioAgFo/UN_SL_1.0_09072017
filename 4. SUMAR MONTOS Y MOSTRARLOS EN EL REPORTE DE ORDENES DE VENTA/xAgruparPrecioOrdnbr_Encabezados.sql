CREATE view [dbo].[xAgruparPrecioOrdnbr_Encabezados] as
select y.ordnbr,y.LineRef
,(select sum(S4Future09 ) from soline x where x.LineRef <= y.lineref and x.OrdNbr = y.OrdNbr) as grp
from soline y 
where --y.OrdNbr = '005292' and 
y.S4Future09 = 1
--order by OrdNbr,LineRef,grp
