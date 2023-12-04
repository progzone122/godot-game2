extends Node

@onready var coins := 0
@onready var hp := 3
@onready var questionsFile = FileAccess.open("res://scripts/questions.json", FileAccess.READ)
@onready var questions = JSON.parse_string(questionsFile.get_as_text())
