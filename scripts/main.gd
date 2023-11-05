extends Node2D

@onready var coin_elem = $CanvasLayer/HBoxContainer/coin_label

func addCoin(count):
	Global.coins += count
func removeCoin(count):
	Global.coins -= count


# Если игрок коснулся объекта game_over
func _on_game_over_body_entered(body):
	get_tree().change_scene_to_file("res://game_over.tscn")

func _process(delta):
	coin_elem.text = str(Global.coins) # Обновление кол-во монет
