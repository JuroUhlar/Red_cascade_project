extends Node2D

func _ready():
	$Particles2D.emitting = false

func activate():
	$Particles2D.emitting = true
