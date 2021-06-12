// ------------------------------------------------------------------------------------------------------------------------
// EP4 - "Families Reunited" (Aerie)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry greeting the audience, and introduces Aerie
APPEND JZJerry
IF ~Global("JZEP4","GLOBAL",1)~ EP4_0
SAY @400 
=
@401 
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",2) SetGlobal("JZCat","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP402")~ EXIT
END
END

// After Aerie is spawned
CHAIN IF ~Global("JZEP4","GLOBAL",2)~ THEN AERIEJ EP4_1
@402 
== JZJerry @403 
=
@404 
DO ~SetGlobal("JZEP4","GLOBAL",3) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP403")~
EXIT

// After Aerie's mother is spawned
CHAIN IF ~Global("JZEP4","GLOBAL",3)~ THEN AERIEJ EP4_2
@405 
== JZAeMo @406
DO ~SetGlobal("JZEP4","GLOBAL",4) SetGlobal("JZCat","GLOBAL",0) SetGlobal("JZAw","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP404")~
EXIT

// Jerry introduces Aerie's father
APPEND JZJerry
IF ~Global("JZEP4","GLOBAL",4)~ EP4_3
SAY @407 
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",5) SetGlobal("JZAw","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP405")~ EXIT
END
END

// After Aerie's father is spawned
CHAIN IF ~Global("JZEP4","GLOBAL",5)~ THEN JZDAD1 EP4_4
@408 
== JZAeMo @408
== AERIEJ @410 
= @411
== JZJerry @412 
DO ~SetGlobal("JZEP4","GLOBAL",6) AddJournalEntry(@413,INFO)
PlaySound("JZCLAP") SetGlobal("JZEP4","GLOBAL",7) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP406")~
EXIT