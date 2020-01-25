extends Node2D

var active = false

func activate():
	Global.latest_checkpoint_position = self.global_position
