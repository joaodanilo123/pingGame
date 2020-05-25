extends RigidBody2D

func _on_Ball_body_entered(body):
	if body.is_in_group("Plate"):
		body.can_rotate = false


func _on_Ball_body_exited(body):
	
	if body.is_in_group("Plate"):
		body.can_rotate = true;
