# Battleships
- Playable from the browser

# Battleships game
- 2 players
- Each player sees 2 boards 10x10 - his own board and the opponent's
- players can place ships on the board, and can shoot in turns at each other's board
- game is over when someone's ships are all sunk

# To run
clone the project (you will have to clone the bigger project)
`cd w3-battleships-web`  
`bundle install`  
`rackup`  
`go to localhost:9292`  
play!  

# To run tests
`cd w3-battleships-web`  
`bundle install`  
`rake`(unit tests) and `cucumber`(acceptance tests)  

## User Stories
As a player  
So that I can prepare for the game  
I would like to place a ship in a board location  

As a player  
So that I can play a more interesting game  
I would like to have a range of ship sizes to choose from  

As a player  
So that I can create a layout of ships to fox my opponent  
I would like to be able to choose the directions my ships face in  

As a player  
So that I can have a coherent game  
I would like ships to be constrained to be on the board  

As a player  
So that I can have a coherent game  
I would like ships to be constrained not to overlap  

As a player  
So that I can win the game  
I would like to be able to fire at my opponents board  

As a player  
So that I know when to finish playing  
I would like to know when I have won or lost  

As a player  
So that I can consider my next shot  
I would like an overview of my hits and misses so far  

As a player  
So that I can play against a human opponent  
I would like to play a two-player game  
