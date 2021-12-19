class_name TutorialMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


onready var checkbox: CheckBox = $HBoxContainer2/CheckBox


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _on_CloseButton_pressed():
	Settings.set_tutorial_enabled(!checkbox.pressed)
	
	self.hide()
	Events.emit_signal("game_initialized")
