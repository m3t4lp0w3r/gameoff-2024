extends Node2D

enum PLAYER_DIR {
	UP, 
	UP_RIGHT,
	RIGHT,
	DOWN_RIGHT,
	DOWN,
	DOWN_LEFT,
	UP_LEFT,	
	LEFT
}

#last link that the player passed
var last_player_link_id : String
var last_player_dir : PLAYER_DIR
