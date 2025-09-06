extends CharacterBody2D
class_name Player
const SPEED := 300
var hp = 3
var input_vector = Vector2.ZERO

func _physics_process(delta: float) -> void:
	input_vector.x = Input.get_action_strength("move_Right") - Input.get_action_strength("move_Lift")
	
	global_position += input_vector * SPEED * delta

func take_damage(damage):
	hp -= damage
	if hp <= 0:
		queue_free()

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemys") and not area.is_queued_for_deletion():
		area.take_damage(1)
