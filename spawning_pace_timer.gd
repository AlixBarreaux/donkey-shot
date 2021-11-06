class_name SpawningPaceTimer
extends Timer


# The code is verbose since it's tighlty coupled with a get_node()


# ----------------------------- DECLARE VARIABLES ------------------------------



# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------



func _on_ProjectileSpawnTimer_max_spawn_pace_reached() -> void:
	self.stop()
	self.disconnect("timeout", self.get_parent().get_node("ProjectileSpawnTimer"), "_on_SpawningPaceTimer_timeout")
	print("Stopped!")
