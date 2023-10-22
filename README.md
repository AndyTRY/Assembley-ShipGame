
# Running the Assembly Game
### Step 1: Lauch MARS MIPS Simulator (with Java)
Java is a prerequisite for the following. You can use the provided jar file or search "MARS MIPS Simulator" online for the jar file. Run the file with
 ```java
java -jar <mars jar file>
```
Once your in the program, follow the next steps.

### Step 2: Load the asm file
- File -> Open -> (Select the asm file)

### Step 3: Setup Keyboard
- Tools -> Keyboard and Display MMIO Simulator
- Connect to MIPS (Bottom left button)
- Keep the window open

### Step 4: Setup Bitmap Display
- Tools -> Bitmap Display
- Setup values 
	- Unit Pixel height/width: 8
	- Display height/width: 256
	- Base Address: 0x10008000 ($gp)
- Connect to MIPS
- Keep the window open

### Step 5: Run the game 
- Run -> Assemble
- Run the program (Green Arrow Icon)

### Step 6: Play the game!
The game should be showing on the Bitmap display.
Click on the keyboard input box and control your ship with W, A, S, D keys.
On Game Over, press P to restart.
