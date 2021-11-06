class_name Projectile
extends RigidBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------


#export var id: int = -1


# ---------------------------------- RUN CODE ----------------------------------


#func _ready() -> void:
#	self._initialize_asserts()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


#func _initialize_asserts() -> void:
#	assert(id > 0)


func die() -> void:
#	modulate.a = 0.3
	self.queue_free()
