extends Node2D

@onready var main := $".."
var questions := [
	{
		"question": "Максимальная скорость передачи данных WiFi6?",
		"answers": {
			"9,6 Гбит/с": true,
			"3,4 Гбит/с": false,
		}
	},
		{
		"question": "Максимальная скорость передачи данных Bluetooth 5",
		"answers": {
			"5 Мбит/с": false,
			"2 Мбит/с": true,
		}
	},
		{
		"question": "Дальность передачи Bluetooth",
		"answers": {
			"до 100 м": true,
			"до 200 м": false,
		}
	},
	{
		"question": "Дальность передачи WiFi",
		"answers": {
			"до 75 м": false,
			"до 100 м": true,
		}
	},
	{
		"question": "Дальность передачи Zigbee",
		"answers": {
			"до 200 м": false,
			"до 100 м": true,
		}
	},	
	{
		"question": "Диапазон частот Bluetooth",
		"answers": {
			"2.4 ГГц": true,
			"850 – 930 МГц": false,
		}
	},	
	{
		"question": "Диапазон частот Zigbee",
		"answers": {
			"2.4 и 5 ГГц": false,
			"850 – 930 МГц": true,
		}
	},	
	{
		"question": "Используется ли безопасность SSID в WiFi",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},	
	{
		"question": "Скорость передачи данных Zigbee 20-250 Кбит/с",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},	
	{
		"question": "Скорость передачи данных WiFi 1-3 Mbps",
		"answers": {
			"Да": false,
			"Нет": true,
		}
	},	
	{
		"question": "Сети Wi-Fi обычно используют топологию «точка-концентратор»?",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},	
	{
		"question": "Дальность передачи WiFi",
		"answers": {
			"до 75 м": false,
			"до 100 м": true,
		}
	},	
	{
		"question": "Стены и препятствия могут ослабить сигнал Wi-Fi",
		"answers": {
			"Да": false,
			"Нет": true,
		}
	},	
	{
		"question": "Bluetooth поддерживается на многих типах устройств?",
		"answers": {
			"Да": false,
			"Нет": true,
		}
	},	
	{
		"question": "Можно узнать свой IP адрес?",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},
		{
		"question": "FTP изначально предусмотрен для передачи",
		"answers": {
			"Небольших текстовых файлов": false,
			"Больших двоичных файлов": true,
		}
	},
	{
		"question": "Модель соединения HTTP одиночное подключение",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},
	{
		"question": "Модель соединения FTP одиночное подключение",
		"answers": {
			"Да": false,
			"Нет": true,
		}
	},
	{
		"question": "Модель соединения FTP двойное подключение",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},
	{
		"question": "Максимальная скорость передачи данных WiFi6?",
		"answers": {
			"9,6 Гбит/с": true,
			"3,4 Гбит/с": false,
		}
	},
	{
		"question": "SSH — это протокол прикладного уровня?",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},
	{
		"question": "Первая версия протокола SSH была разработана в 1995 году?",
		"answers": {
			"Да": true,
			"Нет": false,
		}
	},
]
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
	dialog_id = randi() % questions.size() # Рандомный вопрос из массива
	
	$question.text = questions[dialog_id].question
	
	$button1.text = questions[dialog_id].answers.keys()[0]
	$button2.text = questions[dialog_id].answers.keys()[1]
	
	$question.show()
	$button1.show()
	$button2.show()
	pass
func _on_button_1_pressed():
	if questions[dialog_id].answers[$button1.text] == true:
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
	if questions[dialog_id].answers[$button2.text] == true:
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
