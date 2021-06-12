BEGIN JZKeep

IF ~True()~ JZKeep0
SAY @2400
++ @2401 + JZKeep1
++ @2402 + JZKeep2
++ @2403 + JZKeep4
END

IF ~~ JZKeep1
SAY @2404
IF ~~ THEN DO ~StartStore("JZStore",LastTalkedToBy())~ EXIT
END

IF ~~ JZKeep2
SAY @2405
++ @2406 + JZKeep3
++ @2407 + JZKeep4
++ @2408 + JZKeep5
++ @2409 + JZKeep8
END

IF ~~ JZKeep3
SAY @2410
++ @2411 + JZKeep1
++ @2412 + JZKeep2
++ @2413 EXIT
END

IF ~~ JZKeep4
SAY @2414
++ @2412 + JZKeep2
++ @2401 + JZKeep1
++ @2415 EXIT
END

IF ~~ JZKeep5
SAY @2416
++ @2417 + JZKeep6
++ @2418 + JZKeep9
++ @2419 + JZKeep7
END

IF ~~ JZKeep6
SAY @2420
++ @2411 + JZKeep1
++ @2412 + JZKeep2
++ @2415 EXIT
END

IF ~~ JZKeep7
SAY @2421
IF ~~ THEN EXIT
END

IF ~~ JZKeep8
SAY @2422
++ @2412 + JZKeep2
++ @2401 + JZKeep1
++ @2415 EXIT
END

IF ~~ JZKeep9
SAY @2423
IF ~~ THEN EXIT
END