class_name GetReadyMenu
extends Control


# Displays a message and starts the game by sending the signal Game Started.


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node References
onready var disappear_timer: Timer = $DisappearTimer


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_initialized", self, "on_game_initialized")
	]


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func initialize() -> void:
	self.show()
	disappear_timer.start()


func _on_DisappearTimer_timeout() -> void:
	self.hide()
	Events.emit_signal("game_started")



func on_game_initialized() -> void:
	self.initialize()
