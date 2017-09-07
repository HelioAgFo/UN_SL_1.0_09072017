CREATE view [dbo].[xAgruparDescOrdnbr_ConcatSTUFF] as
select x.ordnbr,x.lineref,
		stuff(
				(SELECT DISTINCT '; ' + Concatenado
				 from xAgruparDescOrdnbr_Concat y
				 where y.ordnbr	= x.ordnbr
				 and y.lineref = x.lineref
				 for xml path (''))
				 ,1,1,'') as ConcatenadoFinal
 from xAgruparDescOrdnbr_Concat x
 --where ordnbr = '005292'
 group by x.ordnbr,x.lineref





GO


