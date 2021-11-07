class_name MainMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node Paths
export (NodePath) var first_button_to_focus_node_path = null


# Node References
onready var menus_to_display: Control = $MenusToDisplay

	# Buttons
onready var first_button_to_focus: Button = get_node(first_button_to_focus_node_path)
onready var options_button: Button = $VBoxContainer/OptionsButton

	# Menus to Display
onready var options_menu: Control = $MenusToDisplay/OptionsMenu


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


# Visibility Changed signals
func _on_OptionsMenu_visibility_changed() -> void:
	self.menus_to_display.set_mouse_filter(MOUSE_FILTER_IGNORE)
	self.options_menu.set_mouse_filter(MOUSE_FILTER_IGNORE)

	self.options_button.grab_focus()


# Button Pressed signals
func _on_OptionsButton_pressed() -> void:
	menus_to_display.set_mouse_filter(MOUSE_FILTER_STOP)
	options_menu.set_mouse_filter(MOUSE_FILTER_STOP)
	
	options_menu.show()
