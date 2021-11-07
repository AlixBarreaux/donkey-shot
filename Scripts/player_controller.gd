class_name PlayerController
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


var move_input: Vector2 = Vector2(0.0, 0.0)


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	self.connect("movement_input_sent", self.get_parent(), "move"),
	Events.connect("game_over", self, "on_game_over")
	]

# Signals to send
signal movement_input_sent


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _physics_process(_delta: float) -> void:
	self.process_movement_inputs()


func process_movement_inputs() -> void:
	move_input.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	move_input.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	move_input = move_input.normalized()
	
	self.emit_signal("movement_input_sent", move_input)


func on_game_over() -> void:
	self.set_physics_process(false)
