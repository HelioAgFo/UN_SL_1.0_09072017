create view [dbo].[xAgruparPrecioOrdnbr_sum] as
select ordnbr,sum(curytotord) as curytotord,lineref from [xAgruparPrecioOrdnbr] group by ordnbr,lineref
