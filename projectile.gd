class_name Projectile
extends RigidBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------


export var score_value: int = 10


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func die() -> void:
#	modulate.a = 0.3
	Global.increase_score(self.score_value)
	self.queue_free()
