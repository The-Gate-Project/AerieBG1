BEGIN ~B2#AeriP~

IF ~Global("B2#AeriJoined","LOCALS",1)~ THEN BEGIN LeaveGroup 
SAY @0
IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT 
IF ~~ THEN REPLY @2 DO ~SetGlobal("B2#AeriJoined","LOCALS",0)~ EXIT 
END

IF ~Global("B2#AeriJoined","LOCALS",0)~ THEN BEGIN ComeBack 
SAY @3 
IF ~~ THEN REPLY @4 DO ~SetGlobal("B2#AeriJoined","LOCALS",1) 
JoinParty()~ EXIT 
IF ~~ THEN REPLY @5 EXIT 
END