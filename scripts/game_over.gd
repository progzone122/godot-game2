extends Node2D

@onready var coins = $"CanvasLayer/VBoxContainer/HBoxContainer2/coin"

func _ready():
	coins.text = str(Global.coins)
