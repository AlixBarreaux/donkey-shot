class_name Projectile
extends RigidBody2D


# ----------------------------- DECLARE VARIABLES ------------------------------


export var score_value: int = 10


# Node References
onready var visibility_notifier_2d: VisibilityNotifier2D = $VisibilityNotifier2D

# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func die() -> void:
	Global.increase_current_score(self.score_value)
	
	# "Disable" the VisibilityNotifier2D in order to avoid triggering the
	# screen_exited signal and decrease the current lives 
	visibility_notifier_2d.disconnect("screen_exited", self, "_on_VisibilityNotifier2D_screen_exited")
	self.queue_free()


func _on_VisibilityNotifier2D_screen_exited() -> void:
	Global.decrease_current_lives(1)
