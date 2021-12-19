class_name TutorialMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


onready var checkbox: CheckBox = $HBoxContainer2/CheckBox


# ---------------------------------- RUN CODE ----------------------------------



# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _on_CloseButton_pressed():
	Settings.set_tutorial_enabled(!checkbox.pressed)
	
	self.hide()


func on_game_over() -> void:
	self.show()
