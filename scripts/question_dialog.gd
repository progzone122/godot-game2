extends Node2D

@onready var main := $".."
@onready var questionLabel = $"CanvasLayer/VBoxContainer/HBoxContainer/question"
@onready var button1 = $"CanvasLayer/VBoxContainer/HBoxContainer2/button1"
@onready var button2 = $"CanvasLayer/VBoxContainer/HBoxContainer3/button2"
var dialog_id # Индекс диалога, с которым взаимодействуем
var door # Перменная для установки связи с нужной дверью

func dialog(doorSelf):
	door = doorSelf
	dialog_id = randi() % Global.questions.size() # Рандомный вопрос из массива
	
	questionLabel.text = Global.questions[dialog_id].question
	
	button1.text = Global.questions[dialog_id].answers.keys()[0]
	button2.text = Global.questions[dialog_id].answers.keys()[1]
	
	questionLabel.show()
	button1.show()
	button2.show()
	pass
func _on_button_1_pressed():
	if Global.questions[dialog_id].answers[button1.text] == true:
		questionLabel.hide()
		button1.hide()
		button2.hide()
		door.queue_free()
		dialog_id = null
	else:
		dialog_id = null
		questionLabel.hide()
		button1.hide()
		button2.hide()
		
		Global.hp -= 1
	

func _on_button_2_pressed():
	if Global.questions[dialog_id].answers[button2.text] == true:
		questionLabel.hide()
		button1.hide()
		button2.hide()
		door.queue_free()
		dialog_id = null
	else:
		dialog_id = null
		questionLabel.hide()
		button1.hide()
		button2.hide()
		
		Global.hp -= 1
