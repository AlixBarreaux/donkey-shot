class_name Projectile
extends RigidBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------



# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func die() -> void:
	modulate.a = 0.3
#	self.queue_free()
