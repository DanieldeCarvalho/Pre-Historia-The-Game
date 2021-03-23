extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -550
var vida = 3
var motion = Vector2()

func _physics_process(delta):
	
	motion.y += GRAVITY
	
	if Input .is_action_pressed("right"):
		motion.x = SPEED
		$Sprite.play("Run")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("left"):
		motion.x = -SPEED
		$Sprite.play("Run")
		$Sprite.flip_h = true
	else:
		motion.x = 0
		$Sprite.play("Idle")
		
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			motion.y = JUMP_HEIGHT
			$JumpFx.play()
	else:
		$Sprite.play("Jump")
	motion = move_and_slide(motion, UP)

func _on_Pe_body_entered(body):
	body.dano()
	motion.y = JUMP_HEIGHT
	$JumpFx.play()



func _on_Dano_body_entered(body):
	vida -= 1
	if vida == 0:
		get_tree().change_scene("Menu.tscn")
	
	print(vida)
	


func _on_CairFase_body_entered(body):
	vida -= 3
	if vida == 0:
		get_tree().change_scene("Menu.tscn")
	
	print(vida)
