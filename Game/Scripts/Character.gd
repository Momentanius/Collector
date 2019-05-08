extends KinematicBody2D

var motion = Vector2()
export var speed = 1
var direction
var has_crystal

func _ready():
	has_crystal = false

func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("ui_down"):
		motion.y = speed
	if event.is_action_pressed("ui_up"):
		motion.y = -speed
	if event.is_action_pressed("ui_right"):
		motion.x = speed
	if event.is_action_pressed("ui_left"):
		motion.x = -speed

	move_and_slide(motion)