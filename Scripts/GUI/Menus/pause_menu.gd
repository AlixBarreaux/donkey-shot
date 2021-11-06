class_name PauseMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node Paths
export (NodePath) var first_button_to_focus_node_path = null


# Node References
onready var first_button_to_focus: Button = get_node(first_button_to_focus_node_path)


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_over", self, "on_game_over")
	]


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()
	self._initialize()
	
	self.hide()
	# Hiding the menu triggers the visibility_changed signal and pauses the game
	# so this line fixes that problem
	get_tree().set_pause(false)


func _unhandled_key_input(_event: InputEventKey) -> void:
	if Input.get_action_strength("display_pause_menu"):
		self.visible = !is_visible()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.first_button_to_focus_node_path != null)
	assert(self.first_button_to_focus is Button)
	
	
func _initialize() -> void:
	self.first_button_to_focus.grab_focus()


func _on_PauseMenu_visibility_changed() -> void:
		get_tree().set_pause(self.visible)


func _on_ResumeButton_pressed() -> void:
	self.hide()


# Make sure the game isn't paused when on the MainMenu
func _on_QuitToMainMenu_pressed() -> void:
	get_tree().set_pause(false)


# Prevent making self appear when the game is over
func on_game_over() -> void:
	self.set_process_unhandled_key_input(false)
