// ------------------------------------------------------------------------------------------------------------------------
// EP1 - "My ex is an evil mastermind" (Irenicus, Ellesime)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry greeting the audience, and introduces Irenicus
APPEND JZJerry
IF ~Global("JZEP1","GLOBAL",1)~ EP1_0
SAY @100 
= @101 
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",2) SetGlobal("JZBoo","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP102")~ EXIT
END
END


// After Irenicus is spawned
CHAIN IF ~Global("JZEP1","GLOBAL",2)~ THEN JZJon EP1_1
@102 
== JZJerry @103 
== JZJon @104
== JZJerry @105 
    DO ~SetGlobal("JZEP1","GLOBAL",3) SetGlobal("JZBoo","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP103")~
EXIT

// After Ellesime is spawned
CHAIN IF ~Global("JZEP1","GLOBAL",3)~ THEN JZElle EP1_2
@106
== JZJon @107
== JZElle @108
== JZJon @109
== JZElle @110 
DO ~SetGlobal("JZEP1","GLOBAL",4) SetGlobal("JZFight","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP104")~
EXIT

// Jerry outro
APPEND JZJerry
IF ~Global("JZEP1","GLOBAL",4)~ EP1_3
SAY @111
=@112 
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",6)
AddJournalEntry(@113,INFO)
PlaySound("JZCLAP") SetGlobal("JZFight","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP105")~
EXIT
END
END
