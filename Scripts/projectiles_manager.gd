class_name ProjectileManager
extends Node2D


# ----------------------------- DECLARE VARIABLES ------------------------------


onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_over", self, "on_game_over")
	]


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func on_game_over() -> void:
	for projectile in self.get_children():
		projectile.queue_free()
