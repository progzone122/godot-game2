extends Node2D

@onready var coin_elem = $CanvasLayer/HBoxContainer/coin_label
var coin := 0;

func addCoin(count):
	coin += count
func removeCoin(count):
	coin -= count

	
func _process(delta):
	coin_elem.text = str(coin) # Обновление кол-во монет

