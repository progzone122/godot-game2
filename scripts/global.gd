extends Node

@onready var coins := 0
@onready var questions := [
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
			"Да": true,
			"Нет": false,
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
