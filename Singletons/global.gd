# Global Singleton
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


var initial_lives: int = 3

var current_score: int = 0 setget set_current_score, get_current_score
onready var current_lives: int = initial_lives setget set_current_lives, get_current_lives

signal current_score_set
signal current_lives_set


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	_initialize()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize() -> void:
	set_current_lives(initial_lives)


# Score
func increase_current_score(value: int) -> void:
	current_score += value
	set_current_score(current_score)


func set_current_score(value: int) -> void:
	current_score = value
	emit_signal("current_score_set", value)


func get_current_score() -> int:
	return current_score


# Live
func decrease_current_lives(value: int) -> void:
	current_lives -= value
	if current_lives <= -1:
		print("Less than 0 lives!")
		set_current_lives(0)
		Events.emit_signal("game_over")
	else:
		print("OOF! " + str(current_lives))
		set_current_lives(current_lives)


func set_current_lives(value: int) -> void:
	current_lives = value
	emit_signal("current_lives_set", value)


func get_current_lives() -> int:
	return current_lives
