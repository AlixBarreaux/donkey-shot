class_name ProjectileDetector
extends Area2D


# ----------------------------- DECLARE VARIABLES ------------------------------



# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------



func _on_ProjectileDetector_body_entered(body: PhysicsBody2D) -> void:
	body.die()
