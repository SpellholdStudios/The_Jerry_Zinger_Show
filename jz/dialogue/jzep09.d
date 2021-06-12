// ------------------------------------------------------------------------------------------------------------------------
// EP9 - "Who's your daddy?" (Aerie)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry welcomes the audience back
CHAIN IF ~Global("JZEP9","GLOBAL",1)~ THEN JZJERRY EP9_0
@900 
=
@901 
== AERIEJ @902
== JZAeMo @903
== AERIEJ @904
== JZAeMo @905
=
@906
== JZDAD1 @907 
== JZJerry @908 
DO ~SetGlobal("JZEP9","GLOBAL",2) SetGlobal("JZApplause","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP902")~
EXIT

CHAIN IF ~Global("JZEP9","GLOBAL",2)~ THEN JZDAD2 EP9_1
@909 
== JZDAD1 @910 
== JZDAD2 @911 
== JZAeMo @912
== JZDAD1 @913 
== JZDAD2 @914 
== AERIEJ @915
== JZAeMo @916
== AERIEJ @917
== JZJERRY @918
=
@919 
== AERIEJ @920
== JZAeMo @921
== AERIEJ @922
== JZAeMo @918
== JZDAD1 @918
== JZDAD2 @918
== IMOEN2J IF ~IsValidForPartyDialogue("Imoen")~ @923
== JZJERRY @918
DO ~SetGlobal("JZEP9","GLOBAL",3) SetGlobal("JZApplause","GLOBAL",0)
SetPlayerSound("Aerie",@924,EXISTANCE5)
ChangeRace("Aerie",HALF_ELF)
ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP903")~
EXIT

APPEND JZJERRY
IF ~Global("JZEP9","GLOBAL",3)~ EP9_2
SAY
@925 
IF ~~ DO ~SetGlobal("JZEP9","GLOBAL",5) PlaySound("JZCLAP")
AddJournalEntry(@926,INFO)
ClearAllActions() StartCutSceneMode() StartCutScene("JZEP904")~
EXIT
END
END
