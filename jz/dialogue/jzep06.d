// ------------------------------------------------------------------------------------------------------------------------
// EP6 - "Knights who wear Lingerie and the women who love them" (Keldorn)
// ------------------------------------------------------------------------------------------------------------------------
// Maria is already onstage
// Jerry greeting the audience, and introduces Keldorn
APPEND JZJerry
IF ~Global("JZEP6","GLOBAL",1)~ EP6_0
SAY @600 
= @601 
IF ~InParty("Anomen")~ DO ~SetGlobal("JZEP6","GLOBAL",2) SetGlobal("JZApplause","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP602")~ EXIT
IF ~!InParty("Anomen")~ DO ~SetGlobal("JZEP6","GLOBAL",2) SetGlobal("JZApplause","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP602a")~ EXIT
END
END

// After Keldorn moves
CHAIN IF ~Global("JZEP6","GLOBAL",2)~ THEN JZMaria EP6_1
@602
DO ~SetGlobal("JZApplause","GLOBAL",0)~
== KELDORJ @603
== JZJerry @604 
== JZMaria @605
== KELDORJ @606 
== JZMaria @607
== KELDORJ @608
== JZMaria @609
== KELDORJ @610
== JZMaria @611
== KELDORJ @612
== JZMaria @613
= @614
== KELDORJ @615
== JZMaria @616
== KELDORJ @617
== ANOMENJ IF ~IsValidforPartyDialogue("Anomen")~ @618
== ANOMEN IF ~!IsValidforPartyDialogue("Anomen")~ @618
== JZJerry @619 
DO ~SetGlobal("JZEP6","GLOBAL",3) SetGlobal("JZStrip","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP603")~
EXIT

// After Anomen is stripped
CHAIN IF ~Global("JZEP6","GLOBAL",3)~ THEN JZKid EP6_2
@620 
== ANOMENJ IF ~IsValidforPartyDialogue("Anomen")~ @621
  DO ~SetGlobal("JZEP6","GLOBAL",4) PlaySound("JZPD") SetGlobal("JZStrip","GLOBAL",0) SetGlobal("JZLaugh","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP604")~
== ANOMEN IF ~!IsValidforPartyDialogue("Anomen")~ @621
  DO ~SetGlobal("JZEP6","GLOBAL",4) PlaySound("JZPD") SetGlobal("JZStrip","GLOBAL",0) SetGlobal("JZLaugh","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP604a")~
EXIT

// After Anomen runs off
CHAIN IF ~Global("JZEP6","GLOBAL",4)~ THEN JZMaria EP6_3
@622
== KELDORJ @623
== JZJerry @624 
== KELDORJ @625
== JZMaria @626
== KELDORJ @627
== JZTrawl @628
== JZMaria @629
= @630
== KELDORJ @631
== JZMaria @632
== KELDORJ @633
== JZJerry @634 
DO ~SetGlobal("JZEP6","GLOBAL",5) SetGlobal("JZLaugh","GLOBAL",0) PlaySound("JZCLAP")
AddJournalEntry(@635,INFO)
ClearAllActions() StartCutSceneMode() StartCutScene("JZEP605")~
EXIT
