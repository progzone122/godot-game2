extends Node2D

@onready var coins = $"CanvasLayer/VBoxContainer/HBoxContainer2/coin"
@onready var label = $"CanvasLayer/VBoxContainer/HBoxContainer/Label"

func _ready():
	if Global.hp != 0:
		label.text = "VICTORY"
	else:
		label.text = "DEFEAT"
	coins.text = str(Global.coins)
