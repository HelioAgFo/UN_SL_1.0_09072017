
CREATE view [dbo].[xAgruparPrecioOrdnbr] as
select x.ordnbr,x.curytotord,y.lineref from xAgruparPrecioOrdnbr_Detalle x 
inner join xAgruparPrecioOrdnbr_Encabezados y on x.ordnbr = y.ordnbr and x.grp = y.grp

