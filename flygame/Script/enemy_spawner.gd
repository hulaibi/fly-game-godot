extends Node2D

var spon_pos = null
var enemy_instance = preload("res://Player/enemy.tscn")


func _ready() -> void:
	randomize()
	spon_pos = $spawnPosition.get_children()
	
func spawn_enemy():
	var index = randi() % spon_pos.size()
	var enemy = enemy_instance.instantiate()
	enemy.global_position = spon_pos[index].global_position
	add_child(enemy)

func _on_timer_timeout() -> void:
	spawn_enemy()
