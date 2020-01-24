extends Node2D

export (PackedScene) var enemy_scene
export var max_enemies = 25
export var reactivate_on_player_death = false
var counter = 0

var boss_dead = false

func activate():
	boss_dead = true
	$spawn_timer.start()
	
func _on_spawn_timer_timeout():
	var enemy = enemy_scene.instance()
	$Enemies.add_child(enemy)
	enemy.get_node("VisibilityEnabler2D").scale = Vector2(10,5)
	enemy.activate()
	counter += 1
	if (counter > max_enemies): $spawn_timer.stop()


func _on_Player_player_dead():
	if boss_dead:
		for enemy in $Enemies.get_children():
			enemy.queue_free()
		counter = 0
		if reactivate_on_player_death: activate()
