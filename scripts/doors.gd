extends Node2D

@onready var question_dialog := $"../question_dialog"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func open():
	$StaticBody2D/CollisionShape2D.set_deferred("disabled", true)
	$StaticBody2D.hide()
	pass
func _on_area_2d_body_entered(body):
	question_dialog.dialog(self)
	pass # Replace with function body.
