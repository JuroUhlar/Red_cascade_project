extends StaticBody2D

export var open = false;

func _ready():
	if (open): openDoor()	

func activate():
	openDoor()
	
func deactivate():
	close()

func openDoor():
	$AnimatedSprite.play("open")
	# $CollisionShape2D.disabled = true
	$CollisionShape2D.scale = Vector2.ZERO
	open = true
	
func close():
	# $CollisionShape2D.disabled = false
	$AnimatedSprite.play("close")
	$CollisionShape2D.scale = Vector2.ONE
	open = false
