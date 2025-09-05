extends CharacterBody2D

const SPEED := 300

var input_vector = Vector2.ZERO

func _physics_process(delta: float) -> void:
	input_vector.x = Input.get_action_strength("move_Right") - Input.get_action_strength("move_Lift")
	
	global_position += input_vector * SPEED * delta
