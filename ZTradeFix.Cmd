##### VARIABLE REPAIR FOR ZOLUREN TRADING.                             
##### Last Update: 03 JUNE, 2012
ABSOLUTE.TOP:
     pause 0.3
     echo
     echo ********************************************
     echo ***** FIXING ZOLUREN TRADING VARIABLES *****
     echo ********************************************
     echo
     # Variables to go to NTR, West Gate, or Leth Deriel.
     put #var NCounter 0
     put #var WCounter 0
     put #var LCounter 0
     # Variables to tell how many contracts I have to each outpost.
     put #var ToDirge 0
     put #var ToStoneClan 0
     put #var ToArtheDale 0
     put #var ToCrossing 0
     put #var ToTigerClan 0
     put #var ToWolfClan 0
     put #var ToLethDeriel 0
     # Variables to tell how many contracts I have from each outpost.
     put #var FromDirge 0
     put #var FromStoneClan 0
     put #var FromArtheDale 0
     put #var FromCrossing 0
     put #var FromTigerClan 0
     put #var FromWolfClan 0
     put #var FromLethDeriel 0
     # Variable to echo start and destination of contracts.
     put #var To NULL
     put #var From NULL
     # Save Variables.
     pause 0.3
     put #save variables
     counter set 0
     gosub CONTRACT.CASE.OPEN
INCREMENT:
     counter add 1
     if %c = 1 then var Number FIRST
     if %c = 2 then var Number SECOND
     if %c = 3 then var Number THIRD
     if %c = 4 then var Number FOURTH
     if %c = 5 then var Number FIFTH
     if %c = 6 then var Number SIXTH
     if %c = 7 then var Number SEVENTH
     if %c = 8 then goto EXIT
CHECK.FOR.CONTRACT:
     pause 0.3
     matchre CHECK.FOR.CONTRACT ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre CHECK.FOR.CONTRACT ^Sorry,
     matchre CONTRACT.CHECK.INIT ^You tap a.* contract inside your .*\.
     matchre EXIT ^I could not find what you were referring to\.
     put TAP %Number CONTRACT IN MY $ContractCase
     matchwait
CONTRACT.CHECK.INIT:
     gosub GET.CONTRACT
     pause 0.3
     gosub CONTRACT.CHECK
     pause 0.3
     gosub STOW.CONTRACT
     goto INCREMENT
##### SUBROUTINE TO CHECK CONTRACTS                                
CONTRACT.CHECK:
     put #statusbar 5 Contract Check
     if contains ("$righthand" "Arthe Dale contract") then put #var ToArtheDale {#evalmath ($ToArtheDale + 1)}
     if contains ("$righthand" "Arthe Dale contract") then put #var NCounter {#evalmath ($NCounter + 1)}
     if contains ("$righthand" "Stone Clan contract") then put #var ToStoneClan {#evalmath ($ToStoneClan + 1)}
     if contains ("$righthand" "Stone Clan contract") then put #var NCounter {#evalmath ($NCounter + 1)}
     if contains ("$righthand" "Dirge contract") then put #var ToDirge {#evalmath ($ToDirge + 1)}
     if contains ("$righthand" "Dirge contract") then put #var NCounter {#evalmath ($NCounter + 1)}
     if contains ("$righthand" "Crossing contract") then put #var ToCrossing {#evalmath ($ToCrossing + 1)}
     if contains ("$righthand" "Crossing contract") then put #var WCounter {#evalmath ($WCounter + 1)}
     if contains ("$righthand" "Tiger Clan contract") then put #var ToTigerClan {#evalmath ($ToTigerClan + 1)}
     if contains ("$righthand" "Tiger Clan contract") then put #var WCounter {#evalmath ($WCounter + 1)}
     if contains ("$righthand" "Wolf Clan contract") then put #var ToWolfClan {#evalmath ($ToWolfClan + 1)}
     if contains ("$righthand" "Wolf Clan contract") then put #var WCounter {#evalmath ($WCounter + 1)}
     if contains ("$righthand" "Leth Deriel contract") then put #var ToLethDeriel {#evalmath ($ToLethDeriel + 1)}
     if contains ("$righthand" "Leth Deriel contract") then put #var LCounter {#evalmath ($LCounter + 1)}
     put READ MY CONTRACT
     waitforre ^.*Trading Contract Issued by:\s+(\S+)
     if "$1" == "Dirge" then put #var FromDirge {#evalmath ($FromDirge + 1)}
     if "$1" == "Stone" then put #var FromStoneClan {#evalmath ($FromStoneClan + 1)}
     if "$1" == "Arthe" then put #var FromArtheDale {#evalmath ($FromArtheDale + 1)}
     if "$1" == "Crossing" then put #var FromCrossing {#evalmath ($FromCrossing + 1)}
     if "$1" == "Tiger" then put #var FromTigerClan {#evalmath ($FromTigerClan + 1)}
     if "$1" == "Wolf" then put #var FromWolfClan {#evalmath ($FromWolfClan + 1)}
     if "$1" == "Leth" then put #var FromLethDeriel {#evalmath ($FromLethDeriel + 1)}
     pause 0.3
     put #save variables
     put #statusbar 2 Contracts To/From: Leth:$ToLethDeriel/$FromLethDeriel Crossing:$ToCrossing/$FromCrossing TC:$ToTigerClan/$FromTigerClan WC:$ToWolfClan/$FromWolfClan Arthe:$ToArtheDale/$FromArtheDale SC:$ToStoneClan/$FromStoneClan Dirge:$ToDirge/$FromDirge - North: $NCounter West: $WCounter Leth: $LCounter
     return
##### CONTRACT CASE SUBROUTINES                                  
CONTRACT.CASE.OPEN:
     pause 0.3
     matchre CONTRACT.CASE.OPEN ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre CONTRACT.CASE.OPEN ^Sorry,
     matchre RETURN ^You can't do that
     matchre RETURN ^You open your
     matchre RETURN ^You slowly open your
     matchre RETURN ^You uncork the
     matchre RETURN ^As you turn the knob on the front of your .*, you hear a \*click\* and a whirring of gears as the top of the .* flips open\.
     matchre RETURN ^That is already open
     matchre OOPS ^What were you referring to\?
     matchre OOPS ^I could not find what you were referring to\.
     put OPEN MY $ContractCase
     matchwait
CONTRACT.CASE.CLOSE:
     pause 0.3
     matchre CONTRACT.CASE.CLOSE ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre CONTRACT.CASE.CLOSE ^Sorry,
     matchre RETURN ^You close your
     matchre RETURN ^You quickly close
     matchre RETURN ^You seal the opening
     matchre RETURN ^You push the top of your .* down, snapping it into place\.
     matchre RETURN ^There is no way to do that\.
     matchre OOPS ^What were you referring to\?
     matchre OOPS ^I could not find what you were referring to\.
     put CLOSE MY $ContractCase
     matchwait
GET.CONTRACT:
     pause 0.3
     matchre GET.CONTRACT ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre GET.CONTRACT ^Sorry,
     matchre RETURN ^You are already holding that
     matchre RETURN ^You get a.* contract
     matchre OOPS ^What were you referring to\?
     matchre OOPS ^I could not find what you were referring to\.
     put GET MY %Number CONTRACT FROM MY $ContractCase
     matchwait
STOW.CONTRACT:
     pause 0.3
     matchre STOW.CONTRACT ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre STOW.CONTRACT ^Sorry,
     matchre RETURN ^You put
     matchre OOPS ^What were you referring to\?
     matchre OOPS ^I could not find what you were referring to\.
     put PUT MY CONTRACT IN MY $ContractCase
     matchwait
##### CRITICAL EXIT MESSAGING                                  
OOPS:
     gosub CONTRACT.CASE.CLOSE
     echo
     echo
     echo *** ARRRGH!!  SOMETHING WENT WRONG!! ***
     echo
     exit
##### EXIT MESSAGING                                        
EXIT:
     gosub CONTRACT.CASE.CLOSE
     echo
     echo
     echo ***** DONE!! *****
     echo
     echo
     exit
##### GENERIC RETURN                                       
RETURN:
     return
##### END OF SCRIPT                                       
