class_name ProjectileSpawnTimer
extends Timer


# ----------------------------- DECLARE VARIABLES ------------------------------


# The ProjectileSpawnTimer gets its wait time decreased by this value
# each time the SpawningPaceTimer sends the Timeout signal
export var time_decrease: float = 0.1
export var min_wait_time: float = 0.1

signal max_spawn_pace_reached

# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------



func _on_SpawningPaceTimer_timeout() -> void:
	if self.get_wait_time() - min_wait_time <= min_wait_time:
		emit_signal("max_spawn_pace_reached")
		return
	
	self.set_wait_time(self.get_wait_time() - time_decrease)
	print(get_wait_time())
