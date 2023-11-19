extends Control

var spawns_value : int = 0
var points_value : int = 0

var score

@onready var spawns = $L_Spawns
@onready var points = $L_Points

# Called when the node enters the scene tree for the first time.
func _ready():
	spawns.text = str(spawns_value)
	points.text = str(points_value)
	GameScore.spawns_changed.connect(_change_new_spawns)
	GameScore.points_changed.connect(_change_new_points)


func _change_new_spawns(value : int):
	spawns_value = value
	spawns.text = str(spawns_value)


func _change_new_points(value : int):
	points_value = value
	points.text = str(points_value)
