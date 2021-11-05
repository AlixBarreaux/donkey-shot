# Global Singleton
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


var score: int = 0 setget set_score, get_score


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func decrease_score(value: int) -> void:
	self.set_score(self.score - value)


func increase_score(value: int) -> void:
	self.set_score(self.score + value)


func set_score(value: int) -> void:
	self.score = value


func get_score() -> int:
	return self.score
