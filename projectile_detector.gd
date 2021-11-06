class_name ProjectileDetector
extends Area2D


# ----------------------------- DECLARE VARIABLES ------------------------------


#export var id: int = -1

export var projectile_score_value: int = 10


# ---------------------------------- RUN CODE ----------------------------------


#func _ready() -> void:
#	self._initialize_asserts()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


#func _initialize_asserts() -> void:
#	assert(id > 0)


func _on_ProjectileDetector_body_entered(body: PhysicsBody2D) -> void:
	body.die()
#	if body.id == self.id:
	Global.increase_score(self.projectile_score_value)
