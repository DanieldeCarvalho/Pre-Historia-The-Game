extends KinematicBody

const SPEED:float = 30.0
var velocity:Vector3 = Vector3 (0,0,0)
 
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	if Input.is_action_pressed("ui_up"):
		velocity.y = SPEED
	if Input.is_action_pressed("ui_down"):
		velocity.y = -SPEED
	if Input.is_action_pressed("ui_page_up"):
		velocity.z = SPEED
	if Input.is_action_pressed("ui_page_down"):
		velocity.z = -SPEED
		
	move_and_slide(velocity)
	velocity = Vector3(0,0,0)
	pass