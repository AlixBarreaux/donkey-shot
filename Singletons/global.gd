# Global Singleton
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


var current_score: int = 0 setget set_current_score, get_current_score
var current_lives: int = 0 setget set_current_lives, get_current_lives

signal current_score_set
signal current_lives_set


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


# Score
func decrease_current_score(value: int) -> void:
	set_current_score(current_score - value)


func increase_current_score(value: int) -> void:
	set_current_score(current_score + value)


func set_current_score(value: int) -> void:
	current_score = value
	emit_signal("current_score_set", value)


func get_current_score() -> int:
	return current_score


# Live
func decrease_current_lives(value: int) -> void:
	set_current_lives(current_lives - value)


func increase_current_lives(value: int) -> void:
	set_current_lives(current_lives + value)


func set_current_lives(value: int) -> void:
	current_lives = value
	emit_signal("current_lives_set", value)


func get_current_lives() -> int:
	return current_lives
