
CREATE view [dbo].[xAgruparDescOrdnbr_Encabezados] as
select y.ordnbr,y.LineRef
,(select sum(S4Future10 ) from soline x where x.LineRef <= y.lineref and x.OrdNbr = y.OrdNbr) as grp
from soline y 
where --y.OrdNbr = '005292' and 
y.S4Future10 = 1
--order by OrdNbr,LineRef,grp
