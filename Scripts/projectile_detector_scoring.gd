class_name ProjectileDetectorScoring
extends Area2D


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node References
onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _on_ProjectileDetector_body_entered(body: PhysicsBody2D) -> void:
	body.mark_points()
	self.audio_stream_player.play()
