CREATE view [dbo].[xAgruparDescOrdnbr] as
select x.ordnbr,x.descr,y.lineref,x.noteid
 from xAgruparDescrOrdnbr_Detalle x 
inner join xAgruparDescOrdnbr_Encabezados y on x.ordnbr = y.ordnbr and x.grp = y.grp



