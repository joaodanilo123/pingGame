extends StaticBody2D

const VELOCITY = 500;
const ROTATION_INTENSITY = 5;
var can_rotate = true;

func _process(delta):
	handleKeyInput(delta);

func handleKeyInput(d):
	if Input.is_action_pressed("ui_down"):
		position.y += VELOCITY * d;
	if Input.is_action_pressed("ui_up"):
		position.y -= VELOCITY * d;
	if Input.is_action_pressed("ui_left"):
		position.x -= VELOCITY * d;
	if Input.is_action_pressed("ui_right"):
		position.x += VELOCITY * d;
	
	
	if rotation <= 1.5 && can_rotate:
		if Input.is_action_pressed("ROTATE_CLOCK"):
			rotate(ROTATION_INTENSITY * d);
	if rotation >= -1.5 && can_rotate:
		if Input.is_action_pressed("ROTATE_COUNTERCLOCK"):
			rotate(-ROTATION_INTENSITY * d);
	
func handleMouseInput():
	if Input.is_mouse_button_pressed(1):
		var motion = (get_global_mouse_position() - position) * 0.2;
		position += motion
