.eqv	BASE_ADDRESS		0x10008000

# Colors
.eqv	SHIP_COLOR		0xebb134
.eqv	SHIP_COLOR_HIT		0xff0000
.eqv 	OBST_COLOR		0x786b48
.eqv	NUM_COLOR		0xff0000
.eqv	NUM_COLOR_2		0xffffff
.eqv	GO_COLOR		0xff0000
.eqv	BLACK			0x000000

# Dimensions
.eqv	ship_dim		3

# Coordinates
.eqv	lives_start		240	# Coor for lives Counter
.eqv 	G_start			1680	# Coor for GAME OVER letters
.eqv 	A_start			1704
.eqv 	M_start			1732
.eqv 	E_start			1760

.eqv 	O_start			3088
.eqv 	V_start			3116
.eqv 	E2_start		3144
.eqv 	R_start			3168
	
.eqv 	D0_start		424	# Coor for Final Score Counter
.eqv 	D1_start		440
.eqv 	D2_start		456
.eqv 	D3_start		472


# Speed
.eqv 	start_speed		1	# Ship deafult speed


# Other
.eqv	num_Obstacles		6	# number of Obstacles on screen (Note: this and "OBS_Spawn" need to be changed together)
.eqv 	ship_invic_time		3000	# Set time for ship invicibility after a collision




.data
screen_obst:	.word		6	# num of OBS on screen

# Coordinates
ship_TL:	.word 		14, 2	# Coor (R,C) form for ship spawn location
ship_BR:	.word 		16, 4


# Numbers	Fornat:  (Height, Width, 0,)	(Body info for filling the pixel) Column-wise
num_lives: 	.word 		5
num_0:		.word		5,3,0,   1,1,1,1,1, 	1,0,0,0,1,	1,1,1,1,1
num_1:		.word		5,3,0,   0,0,0,0,0, 	1,1,1,1,1,	0,0,0,0,0
num_2:		.word		5,3,0,   1,0,1,1,1,	1,0,1,0,1,	1,1,1,0,1
num_3:		.word		5,3,0,   1,0,1,0,1,	1,0,1,0,1,	1,1,1,1,1
num_4:		.word		5,3,0,   1,1,1,0,0,	0,0,1,0,0,	1,1,1,1,1
num_5:		.word		5,3,0,   1,1,1,0,1,	1,0,1,0,1,	1,0,1,1,1
num_6:		.word		5,3,0,   1,1,1,1,1,	1,0,1,0,1,	1,0,1,1,1
num_7:		.word		5,3,0,   1,0,0,0,0,	1,0,0,0,0,	1,1,1,1,1
num_8:		.word		5,3,0,   1,1,1,1,1,	1,0,1,0,1,	1,1,1,1,1
num_9:		.word		5,3,0,   1,1,1,0,0,	1,0,1,0,0,	1,1,1,1,1


# Letters	Fornat:  (Height, Width, 0,)	(Body info for filling the pixel) Column-wise
let_G:		.word		6,6,0,	1,1,1,1,1,0,	1,0,0,0,0,0,	1,0,0,0,0,0,	1,0,1,1,1,0,	1,0,0,0,1,0,	1,1,1,1,1,0
let_A:		.word		6,6,0,	0,0,1,1,0,0,	0,1,0,0,1,0,	1,0,0,0,0,1,	1,1,1,1,1,1,	1,0,0,0,0,1,	1,0,0,0,0,1,	
let_M:		.word		6,6,0,	1,0,0,0,0,1,	1,1,0,0,1,1,	1,0,1,1,0,1,	1,0,0,0,0,1,	1,0,0,0,0,1,	1,0,0,0,0,1,
let_E:		.word		6,6,0,	0,0,0,0,0,0,	1,1,1,1,1,0,	1,0,0,0,0,0,	1,1,1,1,1,0,	1,0,0,0,0,0,	1,1,1,1,1,0,	

let_O:		.word		6,6,0, 0,1,1,1,1,0,	1,1,0,0,1,1,	1,0,0,0,0,1,	1,0,0,0,0,1,	1,1,0,0,1,1,	0,1,1,1,1,0,
let_V:		.word		6,6,0, 0,0,0,0,0,0,	1,0,0,0,0,1,	0,1,0,0,1,0,	0,1,0,0,1,0,	0,0,1,1,0,0,	0,0,0,0,0,0,
let_R:		.word		6,6,0, 1,1,1,1,0,0,	1,0,0,0,1,0,	1,0,0,0,1,0,	1,1,1,1,0,0,	1,0,1,0,0,0,	1,0,0,1,0,0,

# Obstacles 	(Dims[height,width], Speed,)	 BodyInfo (Cloumn-wise)

# Width = 4
Obst_0:		.word		3,4,	3,	1,0,0,	1,0,0,	1,1,0,	1,1,1
Obst_1:		.word		3,4,	4,	0,1,0,	1,1,1,	0,1,0,	0,1,0

#  Width = 2
Obst_2:		.word		4,2,	2,	0,0,0,1, 1,1,1,1

#  Width = 5
Obst_3:		.word		5,5,	1,	0,0,1,0,0,	0,1,1,1,0,	1,1,1,1,1,	0,1,1,1,0,	0,0,1,0,0

#  Width = 3
Obst_4:		.word		4,3,	2,	0,0,1,1,	0,1,0,0,	1,0,0,0

# Spawn Coor for 6 obs on inital spawn
Obst_Spawn:	.word		0,30,0,		5,29,0,		10,28,0,	15,27,0		22,28,0		28,28,0		# (Row, Col, OBS_ID)

obst_move_count: .word		0			# Update OBS movement every 700 cycles 
obst_move_every: .word		700			# determines base speed of all obstacles	(This decreases by 50 per diffultity incr, down to 20)
obst_move_diff: .word		40			# updates cycle time decrease as diffculty incr


# Score
Score_count: 		.word 		0		# Limited to 9999
Score_inc:		.word		1		# indicates rate at which score incrments

score_move_count: .word		0			# incrments score evey 750 cycles								
score_move_every: .word		750		

	
#Difficulty	( when Dif_count reaches 1000, increase diff (=> speed of Obs inr, score_inc incr) 
Dif_count:		.word		0
Dif_next:		.word		10000


# Ship
ship_invic:	.word 		0					# idicates invicibility time of ship (up to 10 cycles)
ship_body:	.word		3,3,1	1,1,0, 0,1,1,	1,1,0		# 3*3 representation of ship, Row-wise
	

.text 






# Initialize game 
GAME_INIT:

# Paint Ship Start
	#TL Pixel/Address
	la $t0, ship_TL		# Get Ship Coor(TL)			
				# 	Calling Convert Coor-Add Fucntion (R,C) => Address on screen
	move $a0, $t0
	jal CONVERT
	move $t0, $v0
	
	#BR Pixel/Address
	la $t1, ship_BR		# Get Ship Coor(BR)			
				# 	Calling Convert Coor-Add Fucntion
	addi $sp, $sp, -4	# push Temp registets
	sw $t0, 0($sp)
	move $a0, $t1
	jal CONVERT
	move $t1, $v0		# pop ret off stack
	lw $t0, 0($sp)		# restore $t0
	addi $sp, $sp, 4	
		
	# Paint Ship Function at TL pixel
				# $t0 = TopLeft 
	li $t1, SHIP_COLOR	# Color		
	la $t2, ship_body	# address to ship body
	
	move $a0, $t2		# Call Paint function
	move $a1, $t0
	move $a2, $t1
	jal PAINT_SHIP


	
# Paint Obstacles at Spawn Location
	li $s7, num_Obstacles	# Counter to loop over number of spawn _obstacles
	li $s6, 0	
	la $s5, Obst_Spawn	# addres to spawn list of spwan coor
	

Loop_Spawn:	
	beq $s6, $s7,	All_Obst_spawned
	
	# Select and OBJ for tile that fits (i.e only OBS of width = X can be used here, This is mostly predetermined except for W = 4)
	lw $t0, 4($s5)
	li $t1, 32
	sub $a0, $t1, $t0 	# this is the case length
	jal GIVE_OBS_ID
	
	sw $v0, 8($s5)		# Keep track of ID
	
	move $a0, $v0
	jal GET_OBS_ADD		# Get Body Address of OBS that correspond to ID
	move $t4, $v0

	lw $s0, 4($t4)	# Width of obstacle
			
	# Consider Rig_Bounds, (If the OBS goes past the right side, then, change width, i.e paint less columns for that OBS)
	li $s2, 32	
	lw $s3, 4($s5)	# Spawn column
	add $s3, $s0, $s3
	sub $s3, $s3, $s2	# get Rig_offset
	
	blez $s3, NO_RIG_OFF
	sub $s4, $s0, $s3	# change coloum to be Real COl - Offset
	sw $s4, 4($t4)
	
NO_RIG_OFF:		
			# Convert TL coor => pixel
	
	addi $sp, $sp, -4	# preserve $t4
	sw $t4, 0($sp)
	move $a0, $s5
	jal CONVERT
	lw $t4, 0($sp) # Restore $t4
	addi $sp, $sp, 4
	
	li $t5, OBST_COLOR
	move $a0, $t4	# Body Info
	move $a1, $v0	# TL pixel
	move $a2, $t5	# COlor 
	
	jal PAINT_OBS
	move $t4, $a0	# Restore $t4
	
	blez $s3, NO_RIG_REST
	sw $s0, 4($t4)
	

NO_RIG_REST:
	addi $s6, $s6, 1 # next pair of spawn coor
	addi $s5, $s5, 12 # Next TL	
	j Loop_Spawn
	
All_Obst_spawned:	
	j Mloop
	
	
	
	
# Main loop of the game after inital states
Mloop:


# check OBS_Movement Counter > every_max
	la $t0, obst_move_count
	lw $t1, 0($t0)
	la $t2, obst_move_every
	lw $t2, 0($t2)
	bgt $t1, $t2, UPDATE_OBS
	
	# incr counter and skip OBS_update
	addi $t1, $t1, 1
	sw $t1, 0($t0)
	j UPD_OBS_FIN
	
	
	
# Update Obs if Counter is reached
UPDATE_OBS:
	# reset counter
	li $t1, 0
	sw $t1, 0($t0)
	
	
#	Update OBS  (Move list of all TL_Obst coors 1*speed left and repaint)
	
	la $s0, Obst_Spawn	# Holds a list of Spawn (R,C,ID) OBS Coors
	li $s1, 0		# Counter 
	
Mloop_OBS_CINCR:	
	beq $s1, num_Obstacles, UPD_OBS_FIN	# for each spawn Coor in list (R,C,ID)
	
	lw $s2, 0($s0)	# TL Row
	lw $s3, 4($s0)  # TL COL
	lw $t0, 8($s0) 	# OBST_ID
	
	# Load OBS Body Info based OBS ID
	move $a0, $t0
	jal GET_OBS_ADD
	move $s4, $v0		# $s4 <= Body add info
	
	# Check if Increasing Speed will hit edge (COl < 0)
	lw $t1, 8($s4)	 #Speed of OBS
	sub $s3, $s3, $t1 # move unit left based on speed
	bltz $s3, RESPAWN 

	# UPDATE if not hitting left side edge
	sw $s3, 4($s0)
	
	# RePaint
	move $a0, $s0
	jal CONVERT
	move $a1, $v0
	move $a0, $s4
	li $a2, OBST_COLOR
	jal PAINT_OBS_col
	
	# Erase Trailing of OBS when moving left by 1*speed
	
	# Create An ERASE block ( width = speed, height = OBS height) (TL = NEW_TL + OBJ width)
	lw $a0, 0($s0)		# Convert Coor to address
	lw $t0, 4($s4)
	add $a1, $t0, $s3
	jal CONVERT2
	
	move $a0, $v0		# Erase 
	lw $a1, 0($s4)
	lw $a2, 8($s4)
	jal ERASE
	
	
	
Mloop_OBS_POST:
	addi $s1, $s1, 1	# incr counter
	addi $s0, $s0, 12	# next pair of (TL, ID)
	j Mloop_OBS_CINCR
	


# if Obj would hit the left barriar, ERASE it and randomly spawn an OBS on right barriar to replace it
RESPAWN:

	# Erase Whole	OBS
	move $a0, $s0
	jal CONVERT
	move $a0, $v0
	lw $a1, 0($s4)
	lw $a2, 4($s4)
	jal ERASE
	
	# 	generate a new pair to store in list
	# width of either 2 - 5	
	li $v0, 42		
	li $a0, 2	
	li $a1, 6
	syscall
	li $s2, 32
	sub $s2, $s2, $a0  # New_Col	(edge of screen - width of OBS)
	jal GIVE_OBS_ID	 #give a corrsponding obj ID for new OBJ
	
	sw $v0, 8($s0) # update ID in list
	
	move $a0, $v0	# Get Body
	jal GET_OBS_ADD
	move $t0, $v0
	lw $t1, 8($t0)	# Speed of OBJ
	
	# Add Speed to Col, so Next iter witll subtrack speed
	add $s2, $s2, $t1
	
	# Generate random row (0 - 27)
	li $v0, 42		
	li $a0, 0
	li $a1, 28
	syscall
	move $s3, $a0
	
	# Store new Row,COl Info
	sw $s3, 0($s0)
	sw $s2, 4($s0)
	j Mloop_OBS_POST
	

	
	
# Returns an OBJ ID for a given Width
GIVE_OBS_ID:
	move $t1, $a0
	beq $t1, 2, S_CASE_2
	beq $t1, 3, S_CASE_3
	beq $t1, 4, S_CASE_4
	beq $t1, 5, S_CASE_5

S_CASE_2:
	li $v0, 2
	jr $ra

S_CASE_3:
	li $v0, 4
	jr $ra

S_CASE_4:	 #(case width = 4 has 2 choices to pick from, meaning these appear less freqenctly than W = 1,3,5)
	li $v0, 42		
	li $a0, 0	
	li $a1, 2
	syscall
	beq $a0, 0, S_CASE_40
	beq $a0, 1, S_CASE_41
S_CASE_40:
	li $v0, 0
	jr $ra
S_CASE_41:
	li $v0, 1
	jr $ra


S_CASE_5:
	li $v0, 3
	jr $ra	

UPD_OBS_FIN:





#	Reading Keyboard Input	
	li $t9, 0xffff0000
	lw $t8, 0($t9)
	beq $t8, 1, key_press		
	
# 	No Input Case



# [Update Live counter]
	la $t0, num_lives	# get num_lives
	lw $t0, 0($t0)
	
	beq $t0, 0, END_GAME	# END game if lives is 0
	beq $t0, 1, lives_1
	beq $t0, 2, lives_2
	beq $t0, 3, lives_3
	beq $t0, 4, lives_4
	beq $t0, 5, lives_5
	
lives_1:			# Load corresponding body of number based on lives
	la $t1, num_1
	j lives_N
lives_2:
	la $t1, num_2
	j lives_N
lives_3:
	la $t1, num_3
	j lives_N
lives_4:
	la $t1, num_4
	j lives_N
lives_5:
	la $t1, num_5
	j lives_N
lives_N:

	# Update Number of lives Counter
	move $a0, $t1		# set body Info
	li $a1, BASE_ADDRESS	# Set TL address
	li $a2, lives_start
	add $a1, $a1, $a2	
	li $a2, NUM_COLOR	# set COlor
	jal PAINT_NUM
# [Update Live counter DONE]
	
	
	

# [Invicibility Check]
#	Update Invic Counter if > 0
	la $t0, ship_invic
	lw $t1, 0($t0)
	beqz $t1, NO_INVIC
	
	# Incr and reset if > invic_time
	addi $t1, $t1, 1		# Incr and reset if > invic_time
	li $t2, ship_invic_time
	bgt $t1, $t2, RESET_INVIC
	
	sw $t1, 0($t0)			# Store incrmented invic
	j NO_INVIC
	
# resets INVIC
RESET_INVIC:
	li $t1, 0		# Set INVIC to 0 (Reset) 
	sw $t1, 0($t0)
	
	la $a0, ship_TL		# Repaint ship as not invic 	
	jal CONVERT
	
	move $a1, $v0
	la $a0, ship_body
	li $a2, SHIP_COLOR
	jal PAINT_SHIP
	
	
NO_INVIC:	
# [Invicibility Check DONE]



# [Update Score Counter]
	la $t0, score_move_count
	lw $t1, 0($t0)
	la $t2, score_move_every
	lw $t2, 0($t2)
	bgt $t1, $t2, UPDATE_SCORE
	
	# incr counter and skip OBS_update
	addi $t1, $t1, 1
	sw $t1, 0($t0)
	j SCORE_FIN
	
# if count is reached, Update Score
UPDATE_SCORE:	
	
	#reset Count
	li $t1, 0
	sw $t1, 0($t0) 
	
	la $t0,	Score_count # Update Score 
	lw $t1, 0($t0)
	la $t2, Score_inc
	lw $t2, 0($t2)
	
	add $t1, $t1, $t2,
	bgt $t1, 9999, MAX_SCORE
	j SCORE_N

MAX_SCORE:
	li $t1, 9999
	
SCORE_N:
	sw $t1, 0($t0)	

SCORE_FIN:
# [Update Score Counter DONE]
	
	
# [Update Difficulty counter]
	la $t0, Dif_count
	lw $t1, 0($t0)
	la $t2, Dif_next
	lw $t2, 0($t2)
	
	# incr Diff count
	addi $t1, $t1, 1
	beq $t1, $t2, INCR_DIFF

	# if not reached, store incr diff_count
	sw $t1, 0($t0)
	j DIFF_END

	
INCR_DIFF:
	
	
	li, $t1, 0		# reset count to 0
	sw $t1, 0($t0)		
	
	# decrease repaint cycle time for OBS (effectively makes them faster)
	la $t3, obst_move_every	
	lw $t4, 0($t3)
	
	la $t9, obst_move_diff
	lw $t9, 0($t9)
	sub $t4, $t4, $t9
	
	bltz $t4, DIFF_END	# Diff already maxed, so no change
	
	sw $t4, 0($t3)		# store/upadte OBS Speed
	
	# Update rate of score increase by 1
	la $t5, Score_inc
	lw $t6, 0($t5)
	addi $t6, $t6, 1
	sw $t6, 0($t5)

DIFF_END:
# [Update Score Counter DONE]



# End of Updates, This is once cycle, loop through the game
	j Mloop
	




# When the user presses a key
key_press:	
	# Load Coor
	la $t0, ship_TL		#TL
	lw $s1, 0($t0)		#Row
	lw $s2, 4($t0)		#Col
		
	la $t3, ship_BR		#BR
	lw $s4, 0($t3)		#Row
	lw $s5, 4($t3)		#Col
	
	# What Key was pressed
	lw $t7, 4($t9) 			
	beq $t7, 0x61, a_press		
	beq $t7, 0x77, w_press
	beq $t7, 0x73, s_press
	beq $t7, 0x64, d_press
	
	# if key was not WASD, restart cycle
	j Mloop
	
	
	# move, update TL,BR corner of ship based on input and repaint
a_press:			
	addi $s2, $s2, -1	# Col -1 (Left)
	addi $s5, $s5, -1
	j Key_post
w_press:
	addi $s1, $s1, -1	# Row + 1 (Up)
	addi $s4, $s4, -1	
	j Key_post		
s_press:
	addi $s1, $s1, 1	# Row - 1 (Down)
	addi $s4, $s4, 1	
	j Key_post

d_press:
	addi $s2, $s2, 1	# Col + 1 (Right()
	addi $s5, $s5, 1
	
	
# [Update Ship Coor]
Key_post:

	# Check if new Pixel is Out_of_Bound (Col,Row in [0, 31]
	blt $s1, 0, OUTB
	bgt $s1, 31, OUTB
	blt $s2, 0, OUTB
	bgt $s2, 31, OUTB
	blt $s4, 0, OUTB
	bgt $s4, 31, OUTB
	blt $s5, 0, OUTB
	bgt $s5, 31, OUTB
	
# Erase Ship
	# TL Pixel/Address
	la $t0, ship_TL		# Get Ship Coor(TL)			
				# 	Calling Convert Coor-Add Fucntion
	move $a0, $t0
	jal CONVERT
	move $t0, $v0		# pop ret off stack
	
	# ERASE 
	li $t3, 3		# HARD-CODE dim of ship
	move $a0, $t0
	move $a1, $t3
	move $a2, $t3
	jal ERASE

# ReLoad/Update Coor
	
	la $t0, ship_TL		#TP
	sw $s1, 0($t0)		#Row
	sw $s2, 4($t0)		#Col
		
	la $t3, ship_BR		#BR
	sw $s4, 0($t3)		#Row
	sw $s5, 4($t3)		#Col
	
# Repaint Ship
	# TL Pixel/Address
	la $t0, ship_TL		# Get Ship Coor(TL)			
				# 	Calling Convert Coor-Add Fucntion
	move $a0, $t0
	jal CONVERT
	move $t0, $v0
	
	# Paint Ship Function at TL pixel
	li $t1, SHIP_COLOR	# Color		
	la $t2, ship_body	# address to ship body
	
	move $a0, $t2
	move $a1, $t0
	move $a2, $t1
	jal PAINT_SHIP_COL

OUTB:
# [Update Ship Coor DONE]
	
	
	# cycle once finished
	j Mloop
	







# EXTRA FUNCTIONS


# This is called when Lives reaches 0
END_GAME:
	
	# Paint Canvas Black
	li $a0, BASE_ADDRESS
	li, $a1, 32
	li, $a2, 32
	jal ERASE
	
	# Paint Letters
	li $a2, GO_COLOR	# color of letters
	li $s0, BASE_ADDRESS	
	
	la $a0, let_G		# G
	addi $a1, $s0, G_start	
	jal PAINT_SHIP
	
	la $a0, let_A		# A
	addi $a1, $s0, A_start	
	jal PAINT_SHIP
	
	la $a0, let_M		# M
	addi $a1, $s0, M_start	
	jal PAINT_SHIP
	
	la $a0, let_E		# E
	addi $a1, $s0, E_start	
	jal PAINT_SHIP
	
	la $a0, let_O		# O
	addi $a1, $s0, O_start	
	jal PAINT_SHIP
	
	la $a0, let_V		# V
	addi $a1, $s0, V_start	
	jal PAINT_SHIP
	
	la $a0, let_E		# E
	addi $a1, $s0, E2_start	
	jal PAINT_SHIP
	
	la $a0, let_R		# R
	addi $a1, $s0, R_start	
	jal PAINT_SHIP
	
	
	# Paint Score
	la $s0, Score_count	# Paint Score 
	lw $s1, 0($s0)
	
	# D0
	li $t0, 1000
	div $s1, $t0
	mflo $a0
	
	mflo $s2		# Some math in order to get the ith digit for D1, D2
	mult $s2, $t0
	mflo $s2
	sub $s1, $s1, $s2
	
	li $a1, D0_start
	addi $a1, $a1, BASE_ADDRESS
	jal PAINT_SCORE
	
	# D1	
	li $t0, 100
	div $s1, $t0
	mflo $a0
	
	mflo $s2
	mult $s2, $t0
	mflo $s2
	sub $s1, $s1, $s2
	
	li $a1, D1_start
	addi $a1, $a1, BASE_ADDRESS
	jal PAINT_SCORE
	
	# D2
	li $t0, 10
	div $s1, $t0
	mflo $a0
	
	mflo $s2
	mult $s2, $t0
	mflo $s2
	sub $s1, $s1, $s2
	
	li $a1, D2_start
	addi $a1, $a1, BASE_ADDRESS
	jal PAINT_SCORE
	
	# D3
	move $a0, $s1
	li $a1, D3_start
	addi $a1, $a1, BASE_ADDRESS
	jal PAINT_SCORE
	
	
	j RESTART	# Go to restart state)
	
	
	
	
# This function Paints the final score
PAINT_SCORE:
	li $a2, NUM_COLOR_2
	
	beq $a0, 0, PAINT_0
	beq $a0, 1, PAINT_1
	beq $a0, 2, PAINT_2
	beq $a0, 3, PAINT_3
	beq $a0, 4, PAINT_4
	beq $a0, 5, PAINT_5
	beq $a0, 6, PAINT_6
	beq $a0, 7, PAINT_7
	beq $a0, 8, PAINT_8
	beq $a0, 9, PAINT_9
	# ERROR CASE

PAINT_0:
	la $a0, num_0	
	j PAINT_SCORE_N
PAINT_1:
	la $a0, num_1	
	j PAINT_SCORE_N
PAINT_2:
	la $a0, num_2	
	j PAINT_SCORE_N
PAINT_3:
	la $a0, num_3	
	j PAINT_SCORE_N
PAINT_4:
	la $a0, num_4	
	j PAINT_SCORE_N
PAINT_5:
	la $a0, num_5	
	j PAINT_SCORE_N
PAINT_6:
	la $a0, num_6	
	j PAINT_SCORE_N
PAINT_7:
	la $a0, num_7	
	j PAINT_SCORE_N
PAINT_8:
	la $a0, num_8	
	j PAINT_SCORE_N
PAINT_9:
	la $a0, num_9	
PAINT_SCORE_N:
	
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal PAINT_NUM
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

	


# Restart state that checks if user presses restart	
RESTART:
	li $t9, 0xffff0000
	lw $t8, 0($t9)
	beq $t8, 1, key_press_p		#keypress_happend
	j RESTART
key_press_p:
	lw $t7, 4($t9) 			
	beq $t7, 0x70, p_press		
	j RESTART

# reainitlize inital game state
p_press:
	
	# Clear Screen
	li $a0, BASE_ADDRESS
	li, $a1, 32
	li, $a2, 32
	jal ERASE
	
	# set Lives back to full
	la $t0, num_lives
	li $t1, 5
	sw $t1, 0($t0)
	
	# reset Invc
	la $t0, ship_invic
	li $t1, 0
	sw $t1, 0($t0)
	
	# Reset Score and its per cycle update counter
	la $t0, Score_count
	li $t1, 0
	sw $t1, 0($t0)
	
	la $t0, score_move_count
	li $t1, 0
	sw $t1, 0($t0)
	
	
	# Reset Diff (change back OBS speed and score increase rate) and reset per cycle update
	la $t0, Score_inc
	li $t1, 1
	sw $t1, 0($t0)
	
	la $t0, obst_move_every
	li $t1, 700
	sw $t1, 0($t0)
	
	la $t0, Dif_count
	li $t1, 0
	sw $t1, 0($t0)
	
# Reset Spawn locations
	#Ship Spawns
	la $t0, ship_TL
	li $t1, 14
	li $t2, 2
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	
	la $t0, ship_BR
	li $t1, 16
	li $t2, 4
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	
	
	
	#OBS Spawns
	la $t0, Obst_Spawn
	li $t1, 0
	li $t2, 30
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	addi $t0, $t0, 12
	
	li $t1, 5
	li $t2, 29
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	addi $t0, $t0, 12
	
	li $t1, 10
	li $t2, 28
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	addi $t0, $t0, 12
	
	li $t1, 15
	li $t2, 27
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	addi $t0, $t0, 12
	
	li $t1, 22
	li $t2, 28
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	addi $t0, $t0, 12
	
	li $t1, 28
	li $t2, 28
	sw $t1, 0($t0)
	sw $t2, 4($t0)
	addi $t0, $t0, 12
	
	
	j GAME_INIT	# initalizes game again
	







# This Function returens address to OBST Body information given an ID
GET_OBS_ADD:
	beq $a0, 0, OBS_ADD_0
	beq $a0, 1, OBS_ADD_1
	beq $a0, 2, OBS_ADD_2
	beq $a0, 3, OBS_ADD_3
	beq $a0, 4, OBS_ADD_4
	
OBS_ADD_0:
	la $v0, Obst_0
	jr $ra
	
OBS_ADD_1:
	la $v0, Obst_1
	jr $ra
	
OBS_ADD_2:
	la $v0, Obst_2
	jr $ra
	
OBS_ADD_3:
	la $v0, Obst_3
	jr $ra
	
OBS_ADD_4:
	la $v0, Obst_4
	jr $ra
	
	
	
# Paint function for NUM_Col (diff from OBS_Paint as it dosent't check if tile 0 tile is part of something else, just paints it black)
PAINT_NUM:
	move $t0, $a0	# addres of body info
	move $t1, $a1	# TL pixel
	move $t2, $a2	# Color
	
	
	li $t3, 0	# row Count
	li $t4, 0	# Col Count
	
	lw $t5, 0($t0)	# Row
	lw $t6, 4($t0)	# Col
	addi $t0, $t0, 12 	# skip to body Info

NUM_N_COL:
	beq $t4, $t6 P_NUM_FIN
	move $t7, $t1		# TL pixel + Col offset
	addi $t1, $t1, 4	# Incr Col
	addi $t4, $t4, 1	
	li $t3, 0		# reset row
NUM_N_ROW:
	beq $t3, $t5 NUM_N_COL
	lw $t8, 0($t0)
	addi $t0, $t0, 4
	beq $t8, 0, NUM_BLACK	# if 0, paint Black
	sw $t2, 0($t7)		# if not 0, paint it Color
	j NUM_SKIP
	
NUM_BLACK:			# Paint Black the tile
	li $t9, BLACK
	sw $t9, 0($t7) 

NUM_SKIP:
	addi $t7, $t7, 128	# nex row 
	addi $t3, $t3, 1
	j NUM_N_ROW

P_NUM_FIN:
	jr $ra
	



# 	Paints OBS_Col (Diff from Ship is this is by Columns and does not paint 0 black by defualt)
PAINT_OBS:
	move $t0, $a0	# addres of body info
	move $t1, $a1	# TL pixel
	move $t2, $a2	# Color
	
	
	li $t3, 0	# row Count
	li $t4, 0	# Col Count
	
	lw $t5, 0($t0)	# Row
	lw $t6, 4($t0)	# Col
	addi $t0, $t0, 12 	# skip to body Info

OBS_N_COL:
	beq $t4, $t6 P_OBS_FIN
	move $t7, $t1		# TL pixel + Col offset
	addi $t1, $t1, 4	# Incr Col
	addi $t4, $t4, 1	
	li $t3, 0		# reset row
OBS_N_ROW:
	beq $t3, $t5 OBS_N_COL
	lw $t8, 0($t0)
	addi $t0, $t0, 4
	beq $t8, 0, OBS_OTHER	# if 0, idicates not part of body => check tile
	sw $t2, 0($t7)		# if not 0, paint it Color
	j OBS_SKIP
	
OBS_OTHER:
	lw $t9, 0($t7)			# check tile, if it was an OBS, rewrite it as black (most likey part of pervious body)
	beq $t9, OBST_COLOR, OBS_BLACK	
	j OBS_SKIP			# tile was not OBS( either (Ship color, or Black, ) Skip coloring 
	
OBS_BLACK:			# Paint Black the tile
	li $t9, BLACK
	sw $t9, 0($t7) 

OBS_SKIP:
	addi $t7, $t7, 128	# nex row 
	addi $t3, $t3, 1
	j OBS_N_ROW

P_OBS_FIN:
	jr $ra
	
	
	
# Paints OBS_Collison CASE	(Similar but chekcs for Collions cases when painting OBS)
PAINT_OBS_col:
	move $t0, $a0	# addres of body info
	move $t1, $a1	# TL pixel
	move $t2, $a2	# Color
	
	la $a2, ship_invic	# wether ship is inciv or not (used for collision)
	lw $a2, 0($a2)
	
	li $t3, 0	# row Count
	li $t4, 0	# Col Count
	
	lw $t5, 0($t0)	# Row
	lw $t6, 4($t0)	# Col
	addi $t0, $t0, 12 	# skip to body Info

OBS_N_COL_col:
	beq $t4, $t6 P_OBS_FIN_col
	move $t7, $t1		# TL pixel + Col offset
	addi $t1, $t1, 4	# Incr Col
	addi $t4, $t4, 1	
	li $t3, 0		# reset row
OBS_N_ROW_col:
	beq $t3, $t5 OBS_N_COL_col
	lw $t8, 0($t0)
	addi $t0, $t0, 4
	beq $t8, 0, OBS_OTHER_col	# if 0, idicates not part of body => check tile
	
	# case if OBS is not o
	lw $t9, 0($t7)	
	beq $t9, SHIP_COLOR_HIT, OBS_SKIP_col	# if invic_color, => Ship is INVIC and skip coloring
	
	beq $t9, SHIP_COLOR, Collision		# if ship_color => collison
	
	# O/W paint OBS pixel
	sw $t2, 0($t7)		# if not 0, paint it Color
	j OBS_SKIP_col
	
OBS_OTHER_col:
	lw $t9, 0($t7)			# check tile, if it was an OBS, rewrite it as black (most likey part of pervious body)
	beq $t9, OBST_COLOR, OBS_BLACK_col	
	j OBS_SKIP_col			# tile was not OBS( either (Ship color, pickup, or Black, ) Skip coloring 
	
OBS_BLACK_col:			# Paint Black the tile
	li $t9, BLACK
	sw $t9, 0($t7) 

OBS_SKIP_col:
	addi $t7, $t7, 128	# nex row 
	addi $t3, $t3, 1
	j OBS_N_ROW_col

P_OBS_FIN_col:
	jr $ra
	
	
	


	




# Given an address to a coor (Row, Col), Translate to => address on screen
CONVERT:	
	move $t0, $a0		# Get address to coor
	lw $t1, 0($t0)		# Row of coor
	lw $t2, 4($t0)		# COl of coor
	
	
	li $t3, BASE_ADDRESS	# (0,0)
	
	li $t4, 128		# Row
	li $t5, 4		# Col
	
	mult $t1, $t4		# Cal offset (Row, Col) => (offset Val)
	mflo $t6
	mult $t2, $t5
	mflo $t7
	add $t7, $t7, $t6
					
	add $t3, $t3, $t7	# Get address of that pixel 
	
	move $v0, $t3		# set return value to be pixel address
	
	jr $ra

# Given (Row, Col), Translate to => address on screen
CONVERT2:	
	move $t1, $a0		# Row of coor
	move $t2, $a1		# COl of coor
	
	li $t3, BASE_ADDRESS	# (0,0)
	
	li $t4, 128		# Row
	li $t5, 4		# Col
	
	mult $t1, $t4		# Cal offset (Row, Col) => (offset Val)
	mflo $t6
	mult $t2, $t5
	mflo $t7
	add $t7, $t7, $t6
					
	add $t3, $t3, $t7	# Get address of that pixel 
	
	move $v0, $t3		# set return value to be pixel address
	
	jr $ra



# Erase Function (width, height, topLeft) 
ERASE:	
	move $t2, $a0		# topLeft
	move $t1, $a1		# height 
	move $t0, $a2		# width	 

	li $t4, 0		# width count
	li $t5, -1 		# height count
	addi $t2, $t2, -128	# To help set up loop make initial row = 0
	
INCRH_E:	
	addi $t2, $t2, 128	# topLeft + 1 row down
	move $t3, $t2		# row i
	addi $t5, $t5, 1	# incr row count
	li, $t4, 0		# reset column
	beq $t5, $t1, ENDL_E
INCRC_E:	
	beq $t4, $t0, INCRH_E
	
	li $t6, BLACK		# paint black
	sw $t6, 0($t3)		
	
	addi $t3, $t3, 4	# next colum tile
	addi $t4, $t4, 1	# incr colum count
	j INCRC_E
	
ENDL_E:	jr $ra


# Paints Ship (Similar to ObS but Row-wise)
PAINT_SHIP:
	move $t1, $a0		# address of body
	move $t2, $a1		# topLeft address (coverted)	
	move $t9, $a2		# color
	
	
	lw $t7, 0($t1)		# row / height
	lw $t8, 4($t1)		# column/ width
	addi $t1, $t1, 12
	
	li, $t4, 0		# width count
	li, $t5, -1 		# height count
	addi $t2, $t2, -128	# To help set up loop make initial row = 0
	
	
INCRH_PS:	
	addi $t2, $t2, 128	# topLeft + 1 row down
	move $t3, $t2		# row i
	addi $t5, $t5, 1	# incr row count
	li, $t4, 0		# reset column
	beq $t5, $t7, ENDL_PS	# for each row
INCRC_PS:	
	beq $t4, $t8, INCRH_PS	# for each column
	
	# Body
	lw $t6, 0($t1)		# get ith cell of ship
	beq $t6, 0, SKIPCOLOR	# if cell is 0, skipcoloring
	sw $t9, 0($t3)		# paint that address color

SKIPCOLOR:	
	addi $t1, $t1, 4	# next element of ship_body
	addi $t3, $t3, 4	# next colum tile
	addi $t4, $t4, 1	# incr colum count
	j INCRC_PS
	
ENDL_PS:	
	jr $ra
	
	

# This paint ship version checks if painting will cause a collision
PAINT_SHIP_COL:
	move $t1, $a0		# address of body
	move $t2, $a1		# topLeft address (coverted)	
	move $t9, $a2		# color
	
	lw $t7, 0($t1)		# row / height
	lw $t8, 4($t1)		# column/ width
	addi $t1, $t1, 12
	
	la $a2, ship_invic	# wether ship is inciv or not (used for collision s
	lw $a2, 0($a2)
	
	li, $t4, 0		# width count
	li, $t5, -1 		# height count
	addi $t2, $t2, -128	# To help set up loop make initial row = 0
	
	
INCRH_PS_COL:	
	addi $t2, $t2, 128	# topLeft + 1 row down
	move $t3, $t2		# row i
	addi $t5, $t5, 1	# incr row count
	li, $t4, 0		# reset column
	beq $t5, $t7, ENDL_PS_COL	# for each row
INCRC_PS_COL:	
	beq $t4, $t8, INCRH_PS_COL	# for each column
	
	# Body
	lw $t6, 0($t1)			# get ith cell of ship
	beq $t6, 0, SKIPCOLOR_COL	# if cell is 0, skipcoloring
	
	# if cell is 1, check is ship is invic, paint it ship_hit
	bgtz $a2, PAINT_PIX_INVC_COL
	
	# check is ship is collison, if tile is OBS tile
	lw $t0  0($t3)
	beq $t0, OBST_COLOR, Collision
	j PAINT_PIX_PS
	
PAINT_PIX_INVC_COL:
	li $v1, SHIP_COLOR_HIT 	# CASE when ship is in invic
	sw $v1, 0($t3)
	j SKIPCOLOR_COL
	
PAINT_PIX_PS:
	sw $t9, 0($t3)		# paint that address color

SKIPCOLOR_COL:	
	addi $t1, $t1, 4	# next element of ship_body
	addi $t3, $t3, 4	# next colum tile
	addi $t4, $t4, 1	# incr colum count
	j INCRC_PS_COL
	
ENDL_PS_COL:	
	jr $ra



	
#	Handles when a collision occurs
Collision:
	
	la $t0, num_lives	# Reduce Lives
	lw $t1, 0($t0)
	addi $t1, $t1, -1
	sw $t1, 0($t0)
	
	
	la $t0, ship_invic	# Start invic timer ( 0 => 1)
	li, $t1, 1
	sw $t1, 0($t0)

	la $a0, ship_TL		# get address of Ship
				
	addi $sp, $sp, -4	# need to perserve $ra
	sw $ra, 0($sp)
	jal CONVERT			
		
	move $a1, $v0		# TL address (ship)
	la $a0, ship_body	# ship body
	li $a2, SHIP_COLOR_HIT	# ship_hit color
	jal PAINT_SHIP		# paint ship, but it is hit instead
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra			# Done Ship coloring
	
	
	


END_PROGRAM:
	li $v0, 10 		# terminate the program gracefully, This will not be jumped to in the program
	syscall
