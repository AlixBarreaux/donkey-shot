class_name ProjectileSpawnTimer
extends Timer


# ----------------------------- DECLARE VARIABLES ------------------------------


# The ProjectileSpawnTimer gets its wait time decreased by this value
# each time the SpawningPaceTimer sends the Timeout signal
export var time_decrease: float = 0.1
export var min_wait_time: float = 0.1

onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_started", self, "on_game_started"),
	Events.connect("game_over", self, "on_game_over")
	]

signal max_spawn_pace_reached


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, signals_connections_list)


# ------------------------------ DECLARE FUNCTIONS -----------------------------



func on_game_started() -> void:
	self.start()


func on_game_over() -> void:
	self.stop()


func _on_SpawningPaceTimer_timeout() -> void:
	if self.get_wait_time() - min_wait_time <= min_wait_time:
		emit_signal("max_spawn_pace_reached")
		return
	
	self.set_wait_time(self.get_wait_time() - time_decrease)
