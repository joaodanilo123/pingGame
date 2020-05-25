extends Node2D

var ball = preload("res://Ball.tscn")

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		var newBall = ball.instance();
		newBall.position = position;
		get_parent().add_child(newBall);
