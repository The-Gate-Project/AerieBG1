BEGIN ~B2#AeriP~

IF ~Global("B2#AeriJoined","LOCALS",1)~ THEN BEGIN LeaveGroup 
SAY @0
IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT 
IF ~~ THEN REPLY @2 DO ~SetGlobal("B2#AeriJoined","LOCALS",0)~ EXIT 
IF ~!AreaCheck("%NashkelCarnival_ZordralsTent%")~ THEN REPLY @6 DO ~SetGlobal("B2#AeriJoined","LOCALS",0) SetDialog("B2#Aeri") EscapeAreaMove("%NashkelCarnival_ZordralsTent%",318,205,3)~ EXIT // New
IF ~AreaCheck("%NashkelCarnival_ZordralsTent%")~ THEN REPLY @6 DO ~SetGlobal("B2#AeriJoined","LOCALS",0) SetDialog("B2#Aeri") MoveToPoint([318.205]) Face(3)~ EXIT // New
END

IF ~Global("B2#AeriJoined","LOCALS",0)~ THEN BEGIN ComeBack 
SAY @3 
IF ~~ THEN REPLY @4 DO ~SetGlobal("B2#AeriJoined","LOCALS",1) JoinParty()~ EXIT 
IF ~~ THEN REPLY @5 EXIT 
IF ~!AreaCheck("%NashkelCarnival_ZordralsTent%")~ THEN REPLY @6 DO ~SetDialog("B2#Aeri") EscapeAreaMove("%NashkelCarnival_ZordralsTent%",318,205,3)~ EXIT // New
IF ~AreaCheck("%NashkelCarnival_ZordralsTent%")~ THEN REPLY @6 DO ~SetDialog("B2#Aeri") MoveToPoint([318.205]) Face(3)~ EXIT // New
END

