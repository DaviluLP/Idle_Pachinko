extends StaticBody2D


@onready var audiosource = $AudioStreamPlayer2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_area_2d_body_entered(body):
	
	if body as Ball:
		print(body.test)
		body.queue_free()
		GameScore.score += 1
		if !audiosource.playing:
			audiosource.play()
