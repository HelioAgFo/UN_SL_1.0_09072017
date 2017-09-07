
CREATE view [dbo].[xAgruparDescOrdnbr_Concat] as
select x.*,y.sTableName,y.sNoteText,concat(RTRIM(x.descr),' ',y.sNoteText) as Concatenado 
from [xAgruparDescOrdnbr] x inner join Snote y on x.noteid = y.nID

