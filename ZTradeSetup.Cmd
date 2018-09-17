##### INITIAL VARIABLE SETUP FOR ZOLUREN TRADING.                          
##### Last Update: 03 JUNE, 2012
ABSOLUTE.TOP:
     pause 0.3
     # Variable for finishing Contract delivery, without getting more.
     put #var Finish.Trading NO
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
     # Variable to keep track of thefts.
     put #var Current.Thefts 0
     # Variables to calculate cost and profit of current contract.
     put #var Current.Worth 0
     put #var Current.Wholesale.Cost 0
     put #var Current.Transport.Cost 0
     put #var Current.Dues 0
     put #var Current.Total.Cost 0
     put #var Current.Cost 0
     put #var Current.Profit 0
     # Variables to calculate cost and profit of current session.
     put #var Total.Worth 0
     put #var Total.Wholesale.Cost 0
     put #var Total.Transport.Cost 0
     put #var Total.Dues 0
     put #var Total.Cost 0
     put #var Total.Profit 0
     # Variable to calculate number of completed contracts.
     put #var Total.Completed 0
     # Variable to echo start and destination of contracts.
     put #var To NULL
     put #var From NULL
     # Time Tracker Variables.
     put #var Begin.Date NULL
     put #var Begin.Time NULL
     # Incidental Variables.
     put #var End.Date NULL
     put #var End.Time NULL
     put #var Profit.Per.Contract 0
     # Save Variables, and abort the script.
     put #save variables
     pause 0.3
     exit
##### END OF SCRIPT                                       
