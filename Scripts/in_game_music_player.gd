class_name InGameMusicPlayer
extends AudioStreamPlayer


# ----------------------------- DECLARE VARIABLES ------------------------------


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_started", self, "play", [0.0]),
	Events.connect("game_over", self, "stop"),
	Events.connect("game_restarted", self, "play", [0.0])
	]


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)


# ------------------------------ DECLARE FUNCTIONS -----------------------------

