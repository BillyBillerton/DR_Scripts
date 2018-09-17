echo Stand in a corner room and run this script. Patience! 
 
START: 
     match NORTH scurries north! 
     match NORTHEAST scurries northeast! 
     match EAST scurries east! 
     match SOUTHEAST scurries southeast! 
     match SOUTH scurries south! 
     match SOUTHWEST scurries southwest! 
     match WEST scurries west! 
     match NORTHWEST scurries northwest! 
     match SEARCH scurrying around the area 
     matchwait 
 
NORTH: 
     move n 
     goto START 
 
NORTHEAST: 
     move ne 
     goto START 
 
EAST: 
     move e 
     goto START 
 
SOUTHEAST: 
     move se 
     goto START 
 
SOUTH: 
     move s 
     goto START 
 
SOUTHWEST: 
     move sw 
     goto START 
 
WEST: 
     move w 
     goto START 
 
NORTHWEST: 
     move nw 
     goto START 
 
SEARCH: 
     put search 
     goto START