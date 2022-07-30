extends Node

export var collectable_scene: PackedScene

func _ready():
	randomize()
	var collectable = load("collectable.tscn").instance()
	add_child(collectable)
		
