class_name TutorialMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node Paths
export (NodePath) var first_button_to_focus_node_path = null


# Node References
	# Buttons
onready var first_button_to_focus: Button = get_node(first_button_to_focus_node_path)

onready var checkbox: CheckBox = $HBoxContainer/CheckBox


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()
	self._initialize()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.first_button_to_focus_node_path != null)
	assert(self.first_button_to_focus is Button)


func _initialize() -> void:
	self.first_button_to_focus.grab_focus()


func _on_CloseButton_pressed():
	Settings.set_tutorial_enabled(!checkbox.pressed)
	
	
	self.hide()
	
	
	Events.emit_signal("game_initialized")
