// ------------------------------------------------------------------------------------------------------------------------
// EP5 - (No name)
// ------------------------------------------------------------------------------------------------------------------------
// Jerry greeting the audience, introducing lesbians
APPEND JZJerry
IF ~Global("JZEP5","GLOBAL",1)~ EP5_0
SAY @500 
IF ~~ DO ~SetGlobal("JZEP5","GLOBAL",2) SetGlobal("JZLesbians","GLOBAL",1) ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP502")~ EXIT
END
END

CHAIN IF ~Global("JZEP5","GLOBAL",5)~ THEN JZNewb EP5_11
@501
== JZNeeber @502
== JZNewb @503
== JZNeeber @504
== JZNewb @505
= @506
== JZNeeber @507
== JZNewb @508
DO ~SetGlobal("JZEP5","GLOBAL",6) ActionOverride("JZNeeber",EscapeArea()) EscapeArea()~
== JANJ IF ~IsValidForPartyDialogue("Jan")~ @509
END
+ ~IsValidForPartyDialogue("Jan")~ + @510 EXIT
+ ~IsValidForPartyDialogue("Jan")~ + @511 EXIT
++ @512 EXIT
++ @513 DO ~ActionOverride("JZNeeber",Enemy()) Enemy()~ EXIT

APPEND JZNewb
IF ~NumTimesTalkedTo(0)~ EP5_1
SAY @514
=
 @515
=
 @516 
=
 @517
=
 @518 
=
 @519
=
 @520 
=
 @521
=
 @522 
IF ~~ THEN DO ~SetGlobal("JZEP5","GLOBAL",3) SetGlobal("JZLesbians","GLOBAL",0) SetGlobal("JZBoo","GLOBAL",1) PlaySound("JZBOO") ClearAllActions() SetCutSceneLite(TRUE) StartCutScene("JZEP503")~ EXIT
END
END

APPEND JZJerry
IF ~Global("JZEP5","GLOBAL",3)~ EP5_10
SAY @523 
IF ~~ THEN DO ~PlaySound("JZCLAP") SetGlobal("JZEP5","GLOBAL",4) SetGlobal("JZBoo","GLOBAL",0)
AddJournalEntry(@524,INFO)
ClearAllActions() StartCutSceneMode() StartCutScene("JZEP504")~ EXIT
END
END
