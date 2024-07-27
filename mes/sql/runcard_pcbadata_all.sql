
-- global_production
CREATE VIEW global_production.runcard_pcbadata_all AS
SELECT Q1 AS Sno FROM global_production.bsc_pcbamodule
union
SELECT Q2 FROM global_production.bsc_pcbamodule
union
SELECT Q3 FROM global_production.bsc_pcbamodule
union
SELECT Q4 FROM global_production.bsc_pcbamodule
union
SELECT Q5 FROM global_production.bsc_pcbamodule
union
SELECT Q6 FROM global_production.bsc_pcbamodule
union
SELECT Q7 FROM global_production.bsc_pcbamodule
union
SELECT Q8 FROM global_production.bsc_pcbamodule
union
SELECT Q9 FROM global_production.bsc_pcbamodule
union
SELECT Q10 FROM global_production.bsc_pcbamodule
union
SELECT Q11 FROM global_production.bsc_pcbamodule
union
SELECT Q12 FROM global_production.bsc_pcbamodule
union
SELECT Q13 FROM global_production.bsc_pcbamodule
union
SELECT Q14 FROM global_production.bsc_pcbamodule
union
SELECT Q15 FROM global_production.bsc_pcbamodule
union
SELECT Q1 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q2 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q3 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q4 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q5 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q6 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q7 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q8 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q9 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q10 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q11 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q12 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q13 FROM global_production.bsc_pcbamodule_500e
union
SELECT Q1 FROM global_production.pc_pcbamodule
union
SELECT Q2 FROM global_production.pc_pcbamodule
union
SELECT Q2b FROM global_production.pc_pcbamodule
union
SELECT Q3 FROM global_production.pc_pcbamodule
union
SELECT Q3b FROM global_production.pc_pcbamodule
union
SELECT Q4 FROM global_production.pc_pcbamodule
union
SELECT Q5 FROM global_production.pc_pcbamodule
union
SELECT Q6 FROM global_production.pc_pcbamodule
union
SELECT Q6b FROM global_production.pc_pcbamodule
union
SELECT Q7 FROM global_production.pc_pcbamodule
union
SELECT Q8 FROM global_production.pc_pcbamodule
union
SELECT Q1 FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q2 FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q3 FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q3b FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q4 FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q4b FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q5 FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q5b FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q6 FROM global_production.pc_pcbamodule_shps200e
union
SELECT Q7 FROM global_production.pc_pcbamodule_shps200e
union
SELECT DMD FROM global_production.runcard_pcbadata
union
SELECT RTM_L_1 FROM global_production.runcard_pcbadata
union
SELECT RPA_L_1 FROM global_production.runcard_pcbadata
union
SELECT RTM_R_2 FROM global_production.runcard_pcbadata
union
SELECT RPA_R_2 FROM global_production.runcard_pcbadata
union
SELECT PSU FROM global_production.runcard_pcbadata
union
SELECT DLNA FROM global_production.runcard_pcbadata
union
SELECT ADAPTERPCBA FROM global_production.runcard_pcbadata
union
SELECT DUPLEXER FROM global_production.runcard_pcbadata
union
SELECT EMI_FILTER FROM global_production.runcard_pcbadata
union
SELECT GPS FROM global_production.runcard_pcbadata
union
SELECT SDMB FROM global_production.runcard_pcbadata_hybrid
union
SELECT RTM_L_1 FROM global_production.runcard_pcbadata_hybrid
union
SELECT RTM_R_2 FROM global_production.runcard_pcbadata_hybrid
union
SELECT RPA_L_1 FROM global_production.runcard_pcbadata_hybrid
union
SELECT RPA_R_2 FROM global_production.runcard_pcbadata_hybrid
union
SELECT PSU FROM global_production.runcard_pcbadata_hybrid
union
SELECT BTSADAPTOR FROM global_production.runcard_pcbadata_hybrid
union
SELECT SURGEPROTECTOR FROM global_production.runcard_pcbadata_hybrid
union
SELECT EMI_FILTER FROM global_production.runcard_pcbadata_hybrid
union
SELECT L_ADAPTOR FROM global_production.runcard_pcbadata_hybrid
union
SELECT R_ADAPTOR FROM global_production.runcard_pcbadata_hybrid
union
SELECT SUBA_DLNA FROM global_production.runcard_pcbadata_hybrid
union
SELECT DLNA_PCBA FROM global_production.runcard_pcbadata_hybrid
union
SELECT DUPLEXER FROM global_production.runcard_pcbadata_hybrid
union
SELECT GPS FROM global_production.runcard_pcbadata_hybrid
union
SELECT NIB FROM global_production.runcard_pcbadata_hybrid
union
SELECT IMX FROM global_production.runcard_pcbadata_hybrid
union
SELECT GSM_MODEM FROM global_production.runcard_pcbadata_hybrid
union
SELECT SDMB FROM global_production.runcard_pcbadata_micro1
union
SELECT RTM_L_1 FROM global_production.runcard_pcbadata_micro1
union
SELECT PSU FROM global_production.runcard_pcbadata_micro1
union
SELECT NIB FROM global_production.runcard_pcbadata_micro1
union
SELECT IMX FROM global_production.runcard_pcbadata_micro1
union
SELECT GSM_MODEM FROM global_production.runcard_pcbadata_micro1
union
SELECT GPS_HOLDER FROM global_production.runcard_pcbadata_micro1
union
SELECT Q14 FROM global_production.runcard_pcba_ospu
union
SELECT SFP FROM global_production.ltebts_runcard_pcbadata
union
SELECT RFM FROM global_production.ltebts_runcard_pcbadata
union
SELECT EBC FROM global_production.ltebts_runcard_pcbadata
union
SELECT FAdaptor FROM global_production.ltebts_runcard_pcbadata
union
SELECT GPS FROM global_production.ltebts_runcard_pcbadata
union
SELECT PSU FROM global_production.ltebts_runcard_pcbadata
union
SELECT NIBCC FROM global_production.ltebts_runcard_pcbadata
union
SELECT Bridgeright FROM global_production.ltebts_runcard_pcbadata
union
SELECT Bridgeleft FROM global_production.ltebts_runcard_pcbadata
union
SELECT Q1 FROM global_production.isp_pcbamodule
union
SELECT Q2 FROM global_production.isp_pcbamodule
union
SELECT Q3 FROM global_production.isp_pcbamodule
union
SELECT Q4 FROM global_production.isp_pcbamodule
union
SELECT Q5 FROM global_production.isp_pcbamodule
union
SELECT Q1 FROM global_production.runcard_pcba_ids
union
SELECT pcbaSno FROM global_production.mapping_pcba
union

-- radio_database

SELECT Q5 FROM radio_database.edsi2_pcba
union
SELECT Q6 FROM radio_database.edsi2_pcba
union
SELECT Q7 FROM radio_database.edsi2_pcba
union
SELECT Q9 FROM radio_database.edsl_pcba
union
SELECT Q10 FROM radio_database.edsl_pcba
union
SELECT Q11 FROM radio_database.edsl_pcba
union
SELECT Q13 FROM radio_database.edssf_pcba
union
SELECT Q3 FROM radio_database.espu_pcba
union
SELECT Q9 FROM radio_database.rru_pcba
union
SELECT Q4 FROM radio_database.spu_pcba
union
SELECT Q5 FROM radio_database.spu_pcba
union
SELECT Q7 FROM radio_database.ssu_pcba