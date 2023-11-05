extends Node2D

@onready var main := $".."
var dialog_id # Индекс диалога, с которым взаимодействуем
var door_id # id двери из meta чтобы потом связать ёё
var door # Перменная для установки связи с нужной дверью

func get_door():
	match door_id:
		0:
			door = $"../door0"
		1:
			door = $"../door1"
		2:
			door = $"../door2"
		3:
			door = $"../door3"
		4:
			door = $"../door4"
		5:
			door = $"../door5"
		6:
			door = $"../door6"
		7:
			door = $"../door7"
		8:
			door = $"../door8"
		9:
			door = $"../door9"
		10:
			door = $"../door10"
	pass

func dialog(id):
	door_id = id
	get_door()
	dialog_id = randi() % Global.questions.size() # Рандомный вопрос из массива
	
	$question.text = Global.questions[dialog_id].question
	
	$button1.text = Global.questions[dialog_id].answers.keys()[0]
	$button2.text = Global.questions[dialog_id].answers.keys()[1]
	
	$question.show()
	$button1.show()
	$button2.show()
	pass
func _on_button_1_pressed():
	if Global.questions[dialog_id].answers[$button1.text] == true:
		$question.hide()
		$button1.hide()
		$button2.hide()
		door.queue_free()
		dialog_id = null
	else:
		dialog_id = null
		$question.hide()
		$button1.hide()
		$button2.hide()
		
		main.removeCoin(1)
	

func _on_button_2_pressed():
	if Global.questions[dialog_id].answers[$button2.text] == true:
		$question.hide()
		$button1.hide()
		$button2.hide()
		door.queue_free()
		dialog_id = null
	else:
		dialog_id = null
		$question.hide()
		$button1.hide()
		$button2.hide()
		
		main.removeCoin(1)
