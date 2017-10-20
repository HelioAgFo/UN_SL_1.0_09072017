USE [UNAPP_PBA]
GO
/****** Object:  StoredProcedure [dbo].[xsp_InsertArticles]    Script Date: 05/10/2017 05:05:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[xsp_InsertArticles] @IDArticle VARCHAR(20), @DescriptionArticle VARCHAR(200)
AS
DECLARE @InvtId VARCHAR(20)
BEGIN TRANSACTION

BEGIN TRY	
	SELECT @InvtId = InvtId 
	FROM Inventory 
	WHERE InvtID = @IDArticle

	IF @@ROWCOUNT = 0
	BEGIN
		INSERT INTO INVENTORYADG(allowgencont, batchsize, bolclass, categorycode, countryorig, crtd_datetime, crtd_prog, crtd_user, density, densityuom, depth, depthuom, diameter, diameteruom, gauge, gaugeuom, height, heightuom, invtid, len, lenuom, listprice, lupd_datetime, lupd_prog, lupd_user, minprice, noteid, omcogsacct, omcogssub, omsalesacct, omsalessub, pack, packcnvfact, packmethod, packsize, packunitmultdiv, packuom, prodlineid, retailprice, royaltycode, s4future01, s4future02, s4future03, s4future04, s4future05, s4future06, s4future07, s4future08, s4future09, s4future10, s4future11, s4future12, scheight, scheightuom, sclen, sclenuom, scvolume, scvolumeuom, scweight, scweightuom, scwidth, scwidthuom, stdcartonbreak, stdgrosswt, stdtarewt, style, user1, user10, user2, user3, user4, user5, user6, user7, user8, user9, volume, voluom, weight, weightuom, width, widthuom)
		VALUES(0, 0, '', '', '', GETDATE(), '10250', 'SYSADMIN', 0, '', 0, '', 0, '', 0, '', 0, '', @IDArticle, 0, '', 0, GETDATE(), '10250', 'SYSADMIN', 0, 0, '', '', '', '', 0, 0, 'PP', 0, '', '', '', 0, '', '', '', 0, 0, 0, 0, '01/01/1900 ', '01/01/1900 ', 0, 0, '', '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 0, 0, '', '', '01/01/1900 ', '', '', '', 0, 0, '', '', '01/01/1900 ', 0, '', 0, '', 0, '')

		INSERT INTO INVENTORY(abccode, approvedvendor, autopodropship, autopopolicy, bmidirstdcost, bmifovhstdcost, bmilastcost, bmipdirstdcost, bmipfovhstdcost, bmipstdcost, bmipvovhstdcost, bmistdcost, bmivovhstdcost, bolcode, buyer, chkordqty, classid, cogsacct, cogssub, color, countstatus, crtd_datetime, crtd_prog, crtd_user, curylistprice, curyminprice, customftr, cycleid, descr, dfltpickloc, dfltpounit, dfltsalesacct, dfltsalessub, dfltshpnotinvacct, dfltshpnotinvsub, dfltsite, dfltsounit, dfltwhseloc, dirstdcost, discacct, discprc, discsub, eoq, explinvoice, explorder, explpackslip, explpicklist, explshipping, fovhstdcost, frtacct, frtsub, glclassid, invtacct, invtid, invtsub, invttype, ircalcpolicy, irdayssupply, irdemandid, irfuturedate, irfuturepolicy, irleadtimeid, irlineptqty, irminonhand, irmodelinvtid, irrcycdays, irseasonendday, irseasonendmon, irseasonstrtday, irseasonstrtmon, irservicelevel, irsftystkdays, irsftystkpct, irsftystkpolicy, irsourcecode, irtargetordmethod, irtargetordreq, irtransfersiteid, itemcommclassid, kit, lastbookqty, lastcost, lastcountdate, lastsiteid, laststdcost, lastvaramt, lastvarpct, lastvarqty, lcvarianceacct, lcvariancesub, leadtime, linkspecid, lotserfxdlen, lotserfxdtyp, lotserfxdval, lotserissmthd, lotsernumlen, lotsernumval, lotsertrack, lupd_datetime, lupd_prog, lupd_user, materialtype, maxonhand, mfgclassid, mfgleadtime, mingrossprofit, moveclass, msds, noteid, pack, pdirstdcost, pernbr, pfovhstdcost, ppvacct, ppvsub, priceclassid, prodmgrid, productionunit, pstdcost, pstdcostdate, pvovhstdcost, reordpt, reordptcalc, reordqty, reordqtycalc, replmthd, rollupcost, rollupprice, rvsdprc, s4future01, s4future02, s4future03, s4future04, s4future05, s4future06, s4future07, s4future08, s4future09, s4future10, s4future11, s4future12, s4future13, safetystk, safetystkcalc, selected, serassign, service, shelflife, size, source, status, stdcost, stdcostdate, stkbaseprc, stkitem, stkrvsdprc, stktaxbasisprc, stkunit, stkvol, stkwt, stkwtunit, style, supplr1, supplr2, supplritem1, supplritem2, taskid, taxcat, transtatuscode, turns, upccode, usagerate, user1, user2, user3, user4, user5, user6, user7, user8, valmthd, vovhstdcost, warrantydays, ytdusage)
		VALUES ('', 0, 0, 'N', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '1', 'N', '100', '5000001', '01', '', 'A', GETDATE(), '10250', 'SYSADMIN', 0, 0, 0, '', @DescriptionArticle, '', 'PZA', '4000001', '01', '', '', '', 'PZA', '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '1100001', @IDArticle, '01', 'F', '1', 0, '', '01/01/1900 ', '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, '', '', 0, 0, 0, '01/01/1900 ', '', 0, 0, 0, 0, '5000001', '01', 999, 0, 0, '', '', '', 0, '', 'NN', GETDATE(), '10250', 'SYSADMIN', 'CISCO', 0, '', 999, 8, '', '', 0, '', 0, '201704', 0, '5000001', '01', '', '', '', 0, '01/01/1900 ', 0, 0, 0, 0, 0, '0', 0, 0, 0, '', '', 0, 0, 0, 0, '01/01/1900 ', '01/01/1900 ', 0, 0, '', '', '', 0, 0, 0, '', 0, 0, '', 'P', '', 0, '01/01/1900 ', 0, 1, 0, 0, 'PZA', 0, 0, '', '', '', '', '', '', '', 'GRAVADO', 'AC', 0, '', 0, '', '', 0, 0, '', '', '01/01/1900 ', '01/01/1900 ', 'A', 0, 0, 0)

		INSERT INTO indfltsites(cpnyid, crtd_datetime, crtd_prog, crtd_user, dfltpickbin, dfltputawaybin, dfltsiteid, invtid, lupd_datetime, lupd_prog, lupd_user, noteid, s4future01, s4future02, s4future03, s4future04, s4future05, s4future06, s4future07, s4future08, s4future09, s4future10, s4future11, s4future12, user1, user10, user2, user3, user4, user5, user6, user7, user8, user9)
		VALUES('UN', GETDATE(), '10250', 'SYSADMIN', '01', '01', '01', @IDArticle, GETDATE(), '10250', 'SYSADMIN', 0, '', '', 0, 0, 0, 0, '01/01/1900 ', '01/01/1900 ', 0, 0, '', '', '', '01/01/1900 ', '', '', '', 0, 0, '', '', '01/01/1900 ')
	END
	ELSE
	BEGIN
		UPDATE Inventory SET Descr = @DescriptionArticle WHERE InvtID = @IDArticle
		UPDATE InvtDescrXRef SET DescrSeg = @DescriptionArticle WHERE InvtID = @IDArticle
	END
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
END CATCH