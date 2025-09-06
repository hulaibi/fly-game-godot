extends CharacterBody2D
class_name Enemys

const SPEED = 120

var hp = 1

func _physics_process(delta: float) -> void:
	global_position.y += SPEED * delta

func take_damage(damage):
	hp -= damage
	if hp <= 0:
		queue_free()
	
func _on_enemy_body_entered(body: Node) -> void:
	# Check if the colliding body is the Player
	if body is Player:
		# Deal damage to the player
		body.take_damage(1)
		# Immediately destroy the enemy to prevent the infinite loop
		queue_free()
