extends KinematicBody2D

var velocity := Vector2()
var SPEED := 1000
var direction := 1

func _ready():
	velocity.x = SPEED * direction
	$AudioStreamPlayer.play()


func _physics_process(_delta):
	if is_on_wall():
		queue_free()
	$AnimatedSprite.play("Projectile")
	$AnimatedSprite.stop()
	velocity = move_and_slide(velocity, Vector2.UP)


func D_ou_G(dir):
	if dir == 1:
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.flip_h = true


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
