extends Area2D

export (NodePath) var player_path
export var deactivate = false
export var triggerable = true
export var one_time = true
export var line = "Default line"
var target

func _ready():
	if (player_path.is_empty()):
		print("Player path empty")

func _on_Trigger_body_entered(body):
	if (triggerable and body.is_in_group("player")):
		var player = get_node(player_path)
		player.talk(line)
		if one_time: queue_free()
		
func activate():
	triggerable = true
	