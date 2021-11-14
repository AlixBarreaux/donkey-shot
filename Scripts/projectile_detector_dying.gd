class_name ProjectileDetectorDying
extends Area2D


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node References
onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------





func _body_entered(body: PhysicsBody2D) -> void:
	body.die()
	self.audio_stream_player.play()
