extends Node2D

@onready var coin_elem = $CanvasLayer/HBoxContainer/coin_label
@onready var hp_elem = $CanvasLayer2/HBoxContainer/hp_label

func addCoin(count):
	Global.coins += count
func removeCoin(count):
	Global.coins -= count

func _process(delta):
	coin_elem.text = str(Global.coins) # Обновление кол-во монет
	hp_elem.text = str(Global.hp) # Обновление кол-во жизней
	if Global.hp == 0 || Global.coins == 8:
		get_tree().change_scene_to_file("res://game_over.tscn")
