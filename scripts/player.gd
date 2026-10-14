extends StaticBody2D

@export var player_one : bool
@export var player_speed : float

var limit_y_screen_up = 70
var limit_Y_screen_down = 290

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_one:
		if Input.is_action_pressed("player_one_down"):
			position.y += player_speed * delta
		elif Input.is_action_pressed("player_one_up"):
			position.y -= player_speed * delta
	else:
		if Input.is_action_pressed("player_two_down"):
			position.y += player_speed * delta
		elif Input.is_action_pressed("player_two_up"):
			position.y -= player_speed * delta
		
	position.y = clamp(position.y, limit_y_screen_up, limit_Y_screen_down)
