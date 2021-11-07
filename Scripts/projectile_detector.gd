class_name ProjectileDetector
extends Area2D


# ----------------------------- DECLARE VARIABLES ------------------------------


export var projectile_score_value: int = 1

# Node References
onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(projectile_score_value > 0)


func _on_ProjectileDetector_body_entered(body: PhysicsBody2D) -> void:
	body.die()
	self.audio_stream_player.play()
