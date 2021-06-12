// Begin the .dlg's
BEGIN JZSeif
BEGIN JZSeb
BEGIN JZBubb
BEGIN JZWilly
BEGIN JZTiana
BEGIN JZPriss
BEGIN JZRumar
BEGIN JZOgre1
BEGIN JZOgre2
BEGIN JZBob
BEGIN JZSteve
BEGIN JZJerry
BEGIN JZJon
BEGIN JZElle
BEGIN JZAeMo
BEGIN JZdad1
BEGIN JZdad2
BEGIN JZNewb
BEGIN JZNeeber
BEGIN JZMaria
BEGIN JZKid
BEGIN JZTrawl

// Now for the Front of House lady  
BEGIN JZCount

// No episodes left
IF ~!Global("JZEP1","GLOBAL",0)
    !Global("JZEP2","GLOBAL",0)
    !Global("JZEP3","GLOBAL",0)
    !Global("JZEP4","GLOBAL",0)
    !Global("JZEP5","GLOBAL",0)
    !Global("JZEP6","GLOBAL",0)
    !Global("JZEP7","GLOBAL",0)
    !Global("JZEP8","GLOBAL",0)
    !Global("JZEP9","GLOBAL",0)~ EP0
SAY @2000
IF ~~ EXIT
END

IF ~GlobalTimerNotExpired("JZShow","GLOBAL")~ EP0_1
SAY @2001
IF ~~ EXIT
END

// EP1 - "My ex is an evil mastermind" (Irenicus, Ellesime)
IF ~Global("JZEP1","GLOBAL",0) !GlobalTimerNotExpired("JZShow","GLOBAL")~ EP1
SAY @2002
+ ~NumInParty(1) PartyGoldGT(9)~ + @2003 + EP1_1
+ ~NumInParty(2) PartyGoldGT(19)~ + @2004 + EP1_2
+ ~NumInParty(3) PartyGoldGT(29)~ + @2004 + EP1_3
+ ~NumInParty(4) PartyGoldGT(39)~ + @2004 + EP1_4
+ ~NumInParty(5) PartyGoldGT(49)~ + @2004 + EP1_5
+ ~NumInParty(6) PartyGoldGT(59)~ + @2004 + EP1_6
+ ~NumInParty(1) !PartyGoldGT(9)~ + @2005 + EP1_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP1_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP1_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP1_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP1_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP1_7
++ @2006 + EP1_8
END

IF ~~ EP1_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP101")~ EXIT
END

IF ~~ EP1_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP101")~ EXIT
END

IF ~~ EP1_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP101")~ EXIT
END

IF ~~ EP1_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP101")~ EXIT
END

IF ~~ EP1_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP101")~ EXIT
END

IF ~~ EP1_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP1","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP101")~ EXIT
END

IF ~~ EP1_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP1_8
SAY @2009
IF ~~ EXIT
END

// EP2 - "Racial tension" (Korgan)
IF ~Global("JZEP2","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL") InParty("Korgan") !Dead("Korgan")~ EP2
SAY @2010
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP2_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP2_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP2_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP2_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP2_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP2_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP2_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP2_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP2_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP2_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP2_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP2_7
++ @2006 + EP2_8
END

IF ~~ EP2_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP201")~ EXIT
END

IF ~~ EP2_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP201")~ EXIT
END

IF ~~ EP2_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP201")~ EXIT
END

IF ~~ EP2_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP201")~ EXIT
END

IF ~~ EP2_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP201")~ EXIT
END

IF ~~ EP2_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP2","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP201")~ EXIT
END

IF ~~ EP2_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP2_8
SAY @2009
IF ~~ EXIT
END

// EP3 - "Leaving with my lover" (Rumar)
IF ~Global("JZEP3","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL")~ EP3
SAY @2011
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP3_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP3_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP3_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP3_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP3_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP3_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP3_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP3_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP3_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP3_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP3_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP3_7
++ @2006 + EP3_8
END

IF ~~ EP3_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP301")~ EXIT
END

IF ~~ EP3_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP301")~ EXIT
END

IF ~~ EP3_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP301")~ EXIT
END

IF ~~ EP3_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP301")~ EXIT
END

IF ~~ EP3_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP301")~ EXIT
END

IF ~~ EP3_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP3","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP301")~ EXIT
END

IF ~~ EP3_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP3_8
SAY @2009
IF ~~ EXIT
END

// EP4 - "Families Reunited" (Aerie)
IF ~Global("JZEP4","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL") InParty("Aerie") !Dead("Aerie")~ EP4
SAY @2012
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP4_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP4_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP4_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP4_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP4_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP4_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP4_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP4_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP4_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP4_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP4_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP4_7
++ @2006 + EP4_8
END

IF ~~ EP4_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP401")~ EXIT
END

IF ~~ EP4_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP401")~ EXIT
END

IF ~~ EP4_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP401")~ EXIT
END

IF ~~ EP4_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP401")~ EXIT
END

IF ~~ EP4_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP401")~ EXIT
END

IF ~~ EP4_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP4","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP401")~ EXIT
END

IF ~~ EP4_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP4_8
SAY @2009
IF ~~ EXIT
END

// EP5 - No name - (Newb)
IF ~Global("JZEP5","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL")~ EP5
SAY @2013
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP5_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP5_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP5_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP5_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP5_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP5_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP5_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP5_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP5_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP5_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP5_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP5_7
++ @2006 + EP5_8
END

IF ~~ EP5_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP5","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP501")~ EXIT
END

IF ~~ EP5_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP5","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP501")~ EXIT
END

IF ~~ EP5_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP5","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP501")~ EXIT
END

IF ~~ EP5_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP5","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP501")~ EXIT
END

IF ~~ EP5_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP5","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP501")~ EXIT
END

IF ~~ EP5_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP5","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP501")~ EXIT
END

IF ~~ EP5_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP5_8
SAY @2009
IF ~~ EXIT
END


// EP6 - "Knights in Lingerie" (Keldorn)
IF ~Global("JZEP6","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL") InParty("Keldorn") !Dead("Keldorn")~ EP6
SAY @2014
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP6_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP6_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP6_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP6_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP6_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP6_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP6_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP6_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP6_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP6_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP6_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP6_7
++ @2006 + EP6_8
END

IF ~~ EP6_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP6","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP601")~ EXIT
END

IF ~~ EP6_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP6","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP601")~ EXIT
END

IF ~~ EP6_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP6","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP601")~ EXIT
END

IF ~~ EP6_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP6","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP601")~ EXIT
END

IF ~~ EP6_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP6","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP601")~ EXIT
END

IF ~~ EP6_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP6","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP601")~ EXIT
END

IF ~~ EP6_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP6_8
SAY @2009
IF ~~ EXIT
END

// EP7 - "Latex Gnomes" (Seifer, SConrad)
IF ~Global("JZEP7","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL")~ EP7
SAY @2015
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP7_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP7_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP7_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP7_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP7_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP7_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP7_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP7_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP7_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP7_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP7_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP7_7
++ @2006 + EP7_8
END

IF ~~ EP7_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP701")~ EXIT
END

IF ~~ EP7_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP701")~ EXIT
END

IF ~~ EP7_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP701")~ EXIT
END

IF ~~ EP7_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP701")~ EXIT
END

IF ~~ EP7_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP701")~ EXIT
END

IF ~~ EP7_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP7","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP701")~ EXIT
END

IF ~~ EP7_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP7_8
SAY @2009
IF ~~ EXIT
END

// EP8 - "My husband's mistress" (Keldorn, Viconia)
IF ~Global("JZEP8","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL") InParty("Keldorn") !Dead("Keldorn") !Dead("Viconia")~ EP8
SAY @2016
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP8_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP8_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP8_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP8_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP8_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP8_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP8_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP8_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP8_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP8_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP8_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP8_7
++ @2006 + EP8_8
END

IF ~~ EP8_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP8","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP801")~ EXIT
END

IF ~~ EP8_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP8","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP801")~ EXIT
END

IF ~~ EP8_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP8","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP801")~ EXIT
END

IF ~~ EP8_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP8","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP801")~ EXIT
END

IF ~~ EP8_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP8","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP801")~ EXIT
END

IF ~~ EP8_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP8","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP801")~ EXIT
END

IF ~~ EP8_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP8_8
SAY @2009
IF ~~ EXIT
END


// EP9 - "Who's your daddy?" (Aerie)
IF ~Global("JZEP9","GLOBAL",0) GlobalTimerExpired("JZShow","GLOBAL") InParty("Aerie") !Dead("Aerie") ~ EP9
SAY @2017
+ ~NumInParty(1) PartyGoldGT(9)~   + @2003 + EP9_1
+ ~NumInParty(2) PartyGoldGT(19)~  + @2004 + EP9_2
+ ~NumInParty(3) PartyGoldGT(29)~  + @2004 + EP9_3
+ ~NumInParty(4) PartyGoldGT(39)~  + @2004 + EP9_4
+ ~NumInParty(5) PartyGoldGT(49)~  + @2004 + EP9_5
+ ~NumInParty(6) PartyGoldGT(59)~  + @2004 + EP9_6
+ ~NumInParty(1) !PartyGoldGT(9)~  + @2005 + EP9_7
+ ~NumInParty(2) !PartyGoldGT(19)~ + @2005 + EP9_7
+ ~NumInParty(3) !PartyGoldGT(29)~ + @2005 + EP9_7
+ ~NumInParty(4) !PartyGoldGT(39)~ + @2005 + EP9_7
+ ~NumInParty(5) !PartyGoldGT(49)~ + @2005 + EP9_7
+ ~NumInParty(6) !PartyGoldGT(59)~ + @2005 + EP9_7
++ @2006 + EP9_8
END

IF ~~ EP9_1
SAY @2007
IF ~~ DO ~SetGlobal("JZEP9","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(10) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP901")~ EXIT
END

IF ~~ EP9_2
SAY @2007
IF ~~ DO ~SetGlobal("JZEP9","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(20) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP901")~ EXIT
END

IF ~~ EP9_3
SAY @2007
IF ~~ DO ~SetGlobal("JZEP9","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(30) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP901")~ EXIT
END

IF ~~ EP9_4
SAY @2007
IF ~~ DO ~SetGlobal("JZEP9","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(40) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP901")~ EXIT
END

IF ~~ EP9_5
SAY @2007
IF ~~ DO ~SetGlobal("JZEP9","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(50) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP901")~ EXIT
END

IF ~~ EP9_6
SAY @2007
IF ~~ DO ~SetGlobal("JZEP9","GLOBAL",1) SetGlobalTimer("JZShow","GLOBAL",ONE_DAY) TakePartyGold(60) ClearAllActions() StartCutSceneMode() StartCutScene("JZEP901")~ EXIT
END

IF ~~ EP9_7
SAY @2008
IF ~~ EXIT
END

IF ~~ EP9_8
SAY @2009
IF ~~ EXIT
END

// No conditions are met
IF ~True()~ EP0_2
SAY @2018
IF ~~ EXIT
END
