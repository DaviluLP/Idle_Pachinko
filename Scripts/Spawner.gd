extends Node2D

var interact_ready := true
var ballinstance

@export var speed : float
@export var ball : PackedScene

@onready var spawner = $CharacterBody2D
@onready var area = $Area2D
@onready var timer = $BallTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	spawner.position += Vector2(speed * delta, 0)
	
	if interact_ready:
		if Input.is_action_pressed("Interact"):
			spawn_ball()
			interact_ready = false
			timer.start()
	


func spawn_ball():
	if ball != null:
		ballinstance = ball.instantiate()
		
		ballinstance.position = spawner.position
		GameScore.spawns += 1
		
		add_child(ballinstance)


func _on_area_2d_body_exited(body):
	if body == spawner:
		speed *= -1


func _on_ball_timer_timeout():
	#interact_ready = true
	spawn_ball()
