extends CharacterBody2D


const SPEED = 150

func _physics_process(delta: float) -> void:
	global_position.y += SPEED * delta
