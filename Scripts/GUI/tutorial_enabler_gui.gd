class_name TutorialEnablerGUI
extends HBoxContainer


# ----------------------------- DECLARE VARIABLES ------------------------------


onready var check_button: CheckButton = $CheckButton


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize() -> void:
	check_button.set_pressed(Settings.tutorial_enabled)


func _on_CheckButton_pressed():
	Settings.set_tutorial_enabled(!Settings.get_tutorial_enabled())
