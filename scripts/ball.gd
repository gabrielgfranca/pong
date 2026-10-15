extends Area2D

@export var ball_speed: float = 300

var initial_position: Vector2
var initial_direction: Vector2
var new_direction: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	inital_ball_direction()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	update_ball_position(delta)
	

func inital_ball_direction() -> void:
	initial_position = Vector2(320, 180)
	
	initial_direction = Vector2([1, -1].pick_random(), [1, -1].pick_random())
	
	new_direction = initial_direction

func update_ball_position(delta: float) -> void:
	position += new_direction * ball_speed * delta
