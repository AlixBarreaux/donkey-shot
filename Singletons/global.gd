# Global Singleton
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


var score: int = 0 setget set_score, get_score

signal score_set


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func decrease_score(value: int) -> void:
	set_score(score - value)


func increase_score(value: int) -> void:
	set_score(score + value)


func set_score(value: int) -> void:
	score = value
	emit_signal("score_set", value)


func get_score() -> int:
	return score
