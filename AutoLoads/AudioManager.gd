extends AudioStreamPlayer

var music = "res://Audio/music/ES_Meditation Aquatic - 369.mp3"

func _ready():
	var stream = load("res://Audio/music/ES_Meditation Aquatic - 369.mp3")
	set_stream(stream)
	set_bus("Music")
	volume_db = -15.0
	play()
