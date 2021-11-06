class_name GameOverMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_over", self, "show")
	]


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _on_PlayAgainButton_pressed() -> void:
	Events.emit_signal("game_restarted")
