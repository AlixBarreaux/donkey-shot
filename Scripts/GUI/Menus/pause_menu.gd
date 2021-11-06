class_name PauseMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------



# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self.hide()
	# Hiding the menu triggers the visibility_changed signal and pauses the game
	# so this line fixes that problem
	get_tree().set_pause(false)


func _unhandled_key_input(_event: InputEventKey) -> void:
	if Input.get_action_strength("display_pause_menu"):
		self.visible = !is_visible()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _on_PauseMenu_visibility_changed() -> void:
		get_tree().set_pause(self.visible)


func _on_ResumeButton_pressed() -> void:
	self.hide()


# Make sure the game isn't paused when on the MainMenu
func _on_QuitToMainMenu_pressed() -> void:
	get_tree().set_pause(false)
