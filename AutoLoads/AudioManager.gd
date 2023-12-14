extends AudioStreamPlayer

var music = "res://Audio/music/ES_Meditation Aquatic - 369.mp3"

func _ready():
	var audio_stream : AudioStreamMP3 = load(music)
	set_stream(audio_stream)
	set_bus("Music")
	volume_db = -15.0
	play()
