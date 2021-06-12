// ------------------------------------------------------------------------------------------------------------------------
// EP7 - "Latex Gnomes" (SConrad, Seifer)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry greeting the audience, and introduces Sebastian and Steve
APPEND JZJerry
IF ~Global("JZEP7","GLOBAL",1)~ EP7_0
SAY @700 
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",2) SetGlobal("JZApplause","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP702")~ EXIT
END
END

// Sebastian starts with making threats
CHAIN IF ~Global("JZEP7","GLOBAL",2)~ THEN JZSeb EP7_1
@701 
== JZSeif @702 
== JZSeb @703 
== JZSeif @702 
== JZJerry @704 
== JZSeb @705 
== JZSeif @702 
== JZJerry @706 
== JZSeb @707 
== JZSeif @708 
== JZJerry @709 
== JZSeb @710 
== JZJerry @711 
== JZSeb @712 
== JZSeif @713 
== JZSeb @714 
== JZJerry @715 
== JZSeb @716 
== JZJerry @717 
= @718 
DO ~SetGlobal("JZEP7","GLOBAL",3) SetGlobal("JZApplause","GLOBAL",0) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP703")~
EXIT

CHAIN IF ~Global("JZEP7","GLOBAL",3)~ THEN JZBubb EP7_2
@719
== JZSeb @720 
== JZSeif @721 
== JZBubb @722
== JZSeb @723  
== JZBubb @724
= @725
== JZSeb @726 
== JZBubb @727
== JZSeb @728 
== JZSeif @729
DO ~SetGlobal("JZEP7","GLOBAL",4) SetGlobal("JZSebSteve","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP704")~
EXIT

// Jerry outro
APPEND JZJerry
IF ~Global("JZEP7","GLOBAL",4)~ EP1_3
SAY @730 
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",5) SetGlobal("JZSebSteve","GLOBAL",0) PlaySound("JZCLAP")
AddJournalEntry(@731,INFO)
ClearAllActions() StartCutSceneMode() StartCutScene("JZEP705")~ EXIT
END
END
