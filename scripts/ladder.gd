extends Area2D

@onready var player = $"../player"

@onready var ladder0 = $"../ladder0"
@onready var ladder1 = $"../ladder1"
@onready var ladder2 = $"../ladder2"
@onready var ladder3 = $"../ladder3"
@onready var ladder4 = $"../ladder4"
@onready var ladder5 = $"../ladder5"
@onready var ladder6 = $"../ladder6"
@onready var ladder7 = $"../ladder7"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	match get_meta("ladder"):
		# ladder0 / ladder1
		0:
			player.position.x = ladder1.position.x - 20
			player.position.y = ladder1.position.y
		1:
			player.position.x = ladder0.position.x - 40
			player.position.y = ladder0.position.y	
		# ladder2 / ladder3
		2:
			player.position.x = ladder3.position.x - 20
			player.position.y = ladder3.position.y
		3:
			player.position.x = ladder2.position.x
			player.position.y = ladder2.position.y + 40	
		# ladder4 / ladder5
		4:
			player.position.x = ladder5.position.x
			player.position.y = ladder5.position.y + 40
		5:
			player.position.x = ladder4.position.x
			player.position.y = ladder4.position.y + 40	
		# ladder6 / ladder7
		6:
			player.position.x = ladder7.position.x - 5
			player.position.y = ladder7.position.y - 40
		7:
			player.position.x = ladder6.position.x + 20
			player.position.y = ladder6.position.y - 40	
	pass
