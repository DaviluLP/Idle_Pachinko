extends Node

signal spawns_changed(current : int)
signal points_changed(current : int)

var spawns : 
	set(value): 
		spawns_changed.emit(value)
		spawns = value

var score : 
	set(value):
		points_changed.emit(value)
		score = value

func _ready():
	spawns = 0
	score = 0
