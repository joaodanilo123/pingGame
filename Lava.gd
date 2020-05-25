extends Area2D


func _ready():
	pass


func _on_Lava_body_entered(body):
	get_tree().change_scene("res://Lose.tscn");
