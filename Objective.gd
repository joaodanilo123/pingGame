extends StaticBody2D


func _ready():
	pass


func _on_WinArea_body_entered(body):
	get_tree().change_scene("res://Win.tscn");
