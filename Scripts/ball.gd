extends RigidBody2D

class_name Ball

var rabbit : PackedScene

@export var test : int = 100

@onready var audio_player = $AudioStreamPlayer2D

var obstacle

# Called when the node enters the scene tree for the first time.
func _ready():
	rabbit = load("res://Scenes/rabbit.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func bounces():
	test += 1
	print(test)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_timer_timeout():
	queue_free()


func _on_body_entered(body):
	if body is Obstacle:
		if body != obstacle:
			obstacle = body
			if !audio_player.playing:
				audio_player.play()
	
	if body is TileMap:
		$DelayTimer.start()


func _on_delay_timer_timeout():
	var new_rabbit = rabbit.instantiate()
	new_rabbit.position = position
	
	get_parent().add_child(new_rabbit)
	
	queue_free()
