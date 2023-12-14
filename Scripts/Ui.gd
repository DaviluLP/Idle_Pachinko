extends Control

var points_value : int = 0

var score

@onready var points = $L_Points

# Called when the node enters the scene tree for the first time.
func _ready():
	points.text = str(points_value)
	GameScore.points_changed.connect(_change_new_points)



func _change_new_points(value : int):
	points_value = value
	points.text = str(points_value)


func _on_b_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
