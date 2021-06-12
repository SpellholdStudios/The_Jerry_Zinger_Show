// ------------------------------------------------------------------------------------------------------------------------
// EP2 - "Racial tension" - (Korgan)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry introduces Korgan
APPEND JZJERRY
IF ~Global("JZEP2","GLOBAL",1)~ EP2_0
SAY @200 
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",2) SetGlobal("JZApplause","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP202")~ EXIT
END
END 

// After Korgan is spawned
CHAIN IF ~Global("JZEP2","GLOBAL",2)~ THEN JZJERRY EP2_1
@201 
== KORGANJ @202
== JZJERRY @203 
= @204 
== KORGANJ @205 DO ~SetGlobal("JZEP2","GLOBAL",3) SetGlobal("JZApplause","GLOBAL",0) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP203")~ EXIT

// After the audience has fled
APPEND JZJERRY
IF ~Global("JZEP2","GLOBAL",3)~ EP2_2
SAY @206 
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",4) AddJournalEntry(@207,INFO) ClearAllActions() StartCutScene("JZEP204")~ EXIT
END
END




















