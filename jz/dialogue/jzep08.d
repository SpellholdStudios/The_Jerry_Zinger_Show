// ------------------------------------------------------------------------------------------------------------------------
// EP8 - "My husband's mistress" (Viconia, Keldorn)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry greeting the audience, introducing Keldorn
APPEND JZJERRY 
IF ~Global("JZEP8","GLOBAL",1)~ EP8_0
SAY @800 
=
@801 
IF ~~ DO ~SetGlobal("JZEP8","GLOBAL",1) SetGlobal("JZCat","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP802")~ EXIT
END
END

// Keldorn says hello
CHAIN IF ~Global("JZEP8","GLOBAL",1)~ THEN KELDORJ EP8_1
@802 
DO ~SetGlobal("JZCat","GLOBAL",0)~
== JZJERRY @803 
== KELDORJ @804
DO ~SetGlobal("JZEP8","GLOBAL",2) SetGlobal("JZAw","GLOBAL",1) PlaySound("JZAHH") ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP803")~ EXIT

CHAIN IF ~Global("JZEP8","GLOBAL",2)~ THEN JZJERRY EP8_2
@805 
DO ~SetGlobal("JZAw","GLOBAL",0)~
== KELDORJ @806
== JZJERRY @807 
DO ~SetGlobal("JZEP8","GLOBAL",3) SetGlobal("JZApplause","GLOBAL",1) PlaySound("JZCLAP") SetGlobal("JZCatcall","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP804")~ EXIT

// Maria enters
CHAIN IF ~Global("JZEP8","GLOBAL",3)~ THEN JZMARIA EP8_3
@808
== KELDORJ @809
== JZMARIA @810
== KELDORJ @811
== JZJERRY @812 
== JZMARIA @813 
DO ~SetGlobal("JZEP8","GLOBAL",4) SetGlobal("JZGasp","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP805")~ EXIT

// Maria accuses Keldorn of having an affair
CHAIN IF ~Global("JZEP8","GLOBAL",4)~ THEN KELDORJ EP8_4
@814 
DO ~SetGlobal("JZGasp","GLOBAL",0)~
== JZMARIA @815 
== KELDORJ @816
== JZMARIA @817
== JZJERRY IF ~IsValidForPartyDialogue("Viconia")~ @818 
DO ~SetGlobal("JZEP8","GLOBAL",5) SetGlobal("JZBoo","GLOBAL",1) PlaySound("JZBOO") ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP806")~
== JZJERRY IF ~!IsValidForPartyDialogue("Viconia")~ @818 
DO ~SetGlobal("JZEP8","GLOBAL",5) SetGlobal("JZBoo","GLOBAL",1) PlaySound("JZBOO") ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP806a")~
EXIT

// NB This CHAIN happens after Viconia's line below.
// Keldorn's Reaction to Viconia
CHAIN IF ~~ THEN KELDORJ EP8_6
@819
== JZMARIA @817
== VICONIJ IF ~IsValidForPartyDialogue("Viconia")~ @820 
== VICONI IF ~!IsValidForPartyDialogue("Viconia")~ @820 
== JZMARIA @821 
== KELDORJ @822
== JZJERRY @823 
DO ~SetGlobal("JZEP8","GLOBAL",6) SetGlobal("JZFight","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP807")~ EXIT

ADD_STATE_TRIGGER VICONI 0 ~!Global("JZEP8","GLOBAL",5)~

// Viconia saches in
// Viconia in Party
APPEND VICONIJ
IF ~Global("JZEP8","GLOBAL",5)~ EP8_5
SAY @824
=
@825
IF ~~ THEN DO ~SetGlobal("JZBoo","GLOBAL",0)~ EXTERN KELDORJ EP8_6
END
END

// Viconia saches in
// Viconia not in Party
APPEND VICONI
IF ~Global("JZEP8","GLOBAL",5)~ EP8_5
SAY @824
=
@825
IF ~~ THEN DO ~SetGlobal("JZBoo","GLOBAL",0)~ EXTERN KELDORJ EP8_6
END
END


// Keldorn and Maria make up
CHAIN IF ~Global("JZEP8","GLOBAL",6)~ THEN KELDORJ EP8_7
@826
DO ~SetGlobal("JZFight","GLOBAL",0)~
== JZMARIA @827
== KELDORJ IF ~IsValidForPartyDialogue("Viconia")~ @828 // Viconia is in the Party
DO ~PlaySound("JZCLAP") SetGlobal("JZEP8","GLOBAL",7) ClearAllActions()
AddJournalEntry(@829,INFO)
StartCutSceneMode() StartCutScene("JZEP808")~
== KELDORJ IF ~!IsValidForPartyDialogue("Viconia")~ @828 // Viconia is not in the Party
DO ~PlaySound("JZCLAP") SetGlobal("JZEP8","GLOBAL",7) ClearAllActions()
AddJournalEntry(@829,INFO)
StartCutSceneMode() StartCutScene("JZEP808a")~
EXIT
