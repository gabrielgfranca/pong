extends StaticBody2D

@export var player_one : bool
@export var player_speed : float

var limit_y_screen_up: float = 70
var limit_y_screen_down: float = 290

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move_players(delta)
	
	
func move_players(delta: float) -> void:
	var direction: float = 0.0
	
	if player_one:
		if Input.is_action_pressed("player_one_down"):
			direction += 1.0
		elif Input.is_action_pressed("player_one_up"):
			direction -= 1.0
	else:
		if Input.is_action_pressed("player_two_down"):
			direction += 1.0
		elif Input.is_action_pressed("player_two_up"):
			direction -= 1.0
	
	position.y += direction * player_speed * delta
	
	position.y = clampf(
		position.y,
		limit_y_screen_up,
		limit_y_screen_down
	)
