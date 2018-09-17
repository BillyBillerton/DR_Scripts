##### README FOR ZOLUREN TRADING SCRIPTS.                             
##### Last Update: 03 JUNE, 2012

##### ATTENTION! ~ Some variables have changed.  Any YES or NO variables are now 1 or 0. ~ ATTENTION! #####

     ZTradeSetup is the inital variable setup for the script to use.
     Just run that once, then edit the variables to suit your needs.

     ZTradeFix is for the times your variables are fouled up.
     It goes through your contract case, and figures out where you have Contracts from, and where they go.

     TradeTrain.Inc is the skill training include.  View that file, for variable setup information.

     The ZTrade script uses global variables.
     This is so that the script can continue after a crash, snag, or even so the player can stop the script and do something else, then continue trading.

     This script is NOT for trading with pack animals, and assumes you have a feedbag.
     Start at any Trader Outpost, or at the Crossing Bank.
     Script can be resumed at any of the above locations, if variables are messed up, run ZTradeFix.

     If NOT in Crossing, have 400 kronars for Caravan rental fees, or have a Caravan outside.

     The following variables MUST be properly set:

          LOCAL Variables (Check top of script):

               Variable to determine script name:
                    Current.Script ztrade, or whatever you name it.

               Variable to determine log window
                    Log log, or whatever your log window is called.

               Variables for amounts to withdraw from bank:
                    Amount1 1000 SILVER
                    Amount2 1000 BRONZE

          GLOBAL Variables:

               Variable for container contracts are stored in.
                    ContractCase <Your container here>

               Variable to determine container state.  (Whether it's kept closed, or open.)
                    CloseContractCase <1 or 0>

               Variable to determine if feedbag is worn or not.
                    FeedbagWorn <1 or 0>
               
               Variable to determine if caravan is returned when finished.  If not, it will be stabled.
                    Return.Caravan <1 or 0>
               
               Variable to determine if skill training is enabled
                    Train.Skills <1 or 0>
