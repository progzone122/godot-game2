extends CharacterBody2D

@onready var anim := $animation as AnimatedSprite2D
@onready var tile_map := $"../TileMap" 
#var tile_size: Vector2i

const SPEED = 240.0


func _physics_process(delta):
	var direction1 = Input.get_axis("ui_left", "ui_right")
	var direction2 = Input.get_axis("ui_up", "ui_down")
	
	$animation.play("default")
	
	# horizontal (x)
	if direction1:
		velocity.x = direction1 * SPEED
		anim.scale.x = abs(anim.scale.x) * direction1
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# vertical (y)
	if direction2:
		velocity.y = direction2 * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()
