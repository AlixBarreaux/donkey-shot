class_name SpawningPaceTimer
extends Timer


# The code is verbose since it's tighlty coupled with a get_node()


# ----------------------------- DECLARE VARIABLES ------------------------------


onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_started", self, "on_game_started"),
	Events.connect("game_over", self, "on_game_over")
	]


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, signals_connections_list)


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func on_game_started() -> void:
	self.start()


func on_game_over() -> void:
	self.stop()


func _on_ProjectileSpawnTimer_max_spawn_pace_reached() -> void:
	self.stop()
	self.disconnect("timeout", self.get_parent().get_node("ProjectileSpawnTimer"), "_on_SpawningPaceTimer_timeout")
