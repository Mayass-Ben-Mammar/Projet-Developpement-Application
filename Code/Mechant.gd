extends KinematicBody2D

var velocity = Vector2()
var speed = 50
export var direction = -1
export var smart = true

func _ready():
	if direction == 1:
		$AnimatedSprite.flip_h = true
	$Floor_checker.enabled = smart
	if smart == true:
		set_modulate(Color(1.2,0.5,1))

func _physics_process(delta):
	
	if is_on_wall() or (is_on_floor() and !$Floor_checker.is_colliding() and smart):
		direction *= -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		$Floor_checker.position.x *= -1
	
	velocity.y += 20
	
	velocity.x = speed * direction
	
	velocity = move_and_slide(velocity, Vector2.UP)	


func _on_Tete_body_entered(body):
	if body == PhysicsBody2D:
		$AnimatedSprite.play("Death")
		speed = 0
		set_collision_layer_bit(4, false)
		set_collision_mask_bit(0, false)
		$Tete.set_collision_layer_bit(4, false)
		$Tete.set_collision_mask_bit(0, false)
		$Cotes.set_collision_layer_bit(4, false)
		$Cotes.set_collision_mask_bit(0, false)
		$Timer.start()
		body.bounce()
	else:
		pass


func _on_Cotes_body_entered(body):
	if body.get_collision_layer() == 1:
		Global.lose_life()
		body.mal(position.x)
	elif body.get_collision_layer() == 32:
		body.queue_free()
		queue_free()


func _on_Timer_timeout():
	queue_free()
