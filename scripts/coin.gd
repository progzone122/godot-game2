extends Area2D

@onready var main := $"../.."
@onready var coin := $".."
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	main.addCoin(1)
	coin.queue_free()
	pass # Replace with function body.
