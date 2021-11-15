class_name GameOverMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node Paths
export (NodePath) var first_button_to_focus_node_path = null


# Node References
onready var first_button_to_focus: Button = get_node(first_button_to_focus_node_path)
onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Events.connect("game_over", self, "on_game_over")
	]


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)
	self._initialize_asserts()
	self._initialize()

# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.first_button_to_focus_node_path != null)
	assert(self.first_button_to_focus is Button)
	
	
func _initialize() -> void:
	self.first_button_to_focus.grab_focus()


func _on_PlayAgainButton_pressed() -> void:
	Events.emit_signal("game_restarted")


func _on_GameOverMenu_visibility_changed() -> void:
	if self.visible:
		self.first_button_to_focus.grab_focus()
	else:
		self.first_button_to_focus.release_focus()


func on_game_over() -> void:
	self.show()
	self.audio_stream_player.play()
