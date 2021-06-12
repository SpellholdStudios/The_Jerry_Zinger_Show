// ------------------------------------------------------------------------------------------------------------------------
// EP3 - "Leaving with my lover" (Rumar)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry greeting the audience, and introduces Rumar, Priss and Tiana
APPEND JZJerry
IF ~Global("JZEP3","GLOBAL",1)~ EP3_0
SAY @300 
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",2) PlaySound("JZClap") SetGlobal("JZClap","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP302")~ EXIT
END
END

// After they are spawned
CHAIN IF ~Global("JZEP3","GLOBAL",2)~ THEN JZRumar EP3_1
@301 
== JZPriss @302
== JZTiana @303
== JZJerry @304 
DO ~SetGlobal("JZEP3","GLOBAL",3) SetGlobal("JZClap","GLOBAL",0) SetGlobal("JZSecrets","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP303")~
EXIT

// When Priss and Tiana confess their homosexuality
CHAIN IF ~Global("JZEP3","GLOBAL",3)~ THEN JZTiana EP3_2
@305
== JZPriss @306
== JZTiana @307
== JZTiana @308 
== JZPriss @309
DO ~SetGlobal("JZEP3","GLOBAL",4) SetGlobal("JZSecrets","GLOBAL",0) SetGlobal("JZLesbians","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP304")~
EXIT

// When Rumar wishes them good luck
CHAIN IF ~Global("JZEP3","GLOBAL",4)~ THEN JZRumar EP3_3
@310 
== JZTiana @311
== JZPriss @312
== JZTiana @313
== JZPriss @314
== JZJerry @315 
== JZRumar @316 
= @317 
== JZTiana @318
== JZRumar @319 
== JZPriss @320
== JZRumar @321
DO ~SetGlobal("JZEP3","GLOBAL",5) SetGlobal("JZLesbians","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP305")~
EXIT

// Enter Sir William of Thorpe
CHAIN IF ~Global("JZEP3","GLOBAL",5)~ THEN JZWilly EP3_4
@322 
== KELDORJ IF ~InParty("Keldorn") !Dead("Keldorn") GlobalGT("LadyMaria","GLOBAL",2)~ @323
== KELDORJ IF ~InParty("Keldorn") !Dead("Keldorn") !GlobalGT("LadyMaria","GLOBAL",0)~ @324
== JZRumar @325 
DO ~SetGlobal("JZEP3","GLOBAL",6) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP306")~
EXIT

// Jerry outro
APPEND JZJerry
IF ~Global("JZEP3","GLOBAL",6)~ EP3_5
SAY @326 
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",7) AddJournalEntry(@327,INFO)
PlaySound("JZCLAP") ClearAllActions() StartCutSceneMode() StartCutScene("JZEP307")~ EXIT
END
END
