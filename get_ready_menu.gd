class_name GetReadyMenu
extends Control


# Displays a message and starts the game by sending the signal Game Started.


# ----------------------------- DECLARE VARIABLES ------------------------------



# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _on_DisappearTimer_timeout() -> void:
	self.hide()
	Events.emit_signal("game_started")
