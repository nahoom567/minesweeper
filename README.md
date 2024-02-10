# minesweeper
This project is a an assembly model of the game "minesweeper".
At first, the program will print to the screen an explanation of how to play the game, after a few seconds the explanation will disappear and in its place the game will start. - the image of the explanation: (https://github.com/nahoom567/minesweeper/assets/128990420/4986aced-c9e5-4b1c-bfa3-769c6fb744be)
Then, the program will create mouse borders so that the user will be able to move the mouse only in the places where the game map is located. In addition to creating the borders, the program prints the starting position, with the help of the position the user should be able to understand which squares on the screen represent bombs and which numbers.
The user is then supposed to figure out which squares next to the squares they solved represent bombs and which of them are numbers and so on.
In addition, if the player wants to mark the squares they think are a bomb, so that they remember that those squares represent a bombC later, they can right-click and the letter F (to represent Flag) will immediately be printed to the screen in the square that was pressed.
Also, if at some point the user clicks on the same square that represents a number, twice or more, the game does not consider the additional clicks as a successful click but does not disqualify him/her. Conversely, if the user clicks on a slot on the screen that represents a bomb, the game shows the player how to win, prints a loss message and after a few seconds the game is over. But in case the player manages to click all the correct squares the game is over.

# installation
1. clone the project
2. extract the Tasm 1.4.zip into the c directory
3. put the chess.asm file in the directory C:\Tasm 1.4\Tasm

# run
1. run C:\Tasm 1.4\Tasm AutoMount Manual Edit-Tlink-TD.lnk
2. tasm mine.asm
3. tlink mine
4. mine.exe





