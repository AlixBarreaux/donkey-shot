class_name PlayerController
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


var move_input: Vector2 = Vector2(0.0, 0.0)
#var rotation_input: float = 0.0



# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	self.connect("movement_input_sent", self.get_parent(), "move"),
	self.connect("rotation_input_sent", self.get_parent(), "rotate")
	]

# Signals to send
signal movement_input_sent
signal rotation_input_sent

# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_signals()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_signals() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)


func _physics_process(_delta: float) -> void:
	self.process_movement_inputs()
#	self.process_rotation_inputs()


func process_movement_inputs() -> void:
	move_input.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	move_input.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	move_input = move_input.normalized()
	
	self.emit_signal("movement_input_sent", move_input)





#func process_rotation_inputs() -> void:
#	if Input.get_action_strength("rotate_left"):
#		rotation_input = -1.0
#		self.emit_signal("rotation_input_sent", rotation_input)
#
#	if Input.is_action_just_released("rotate_left"):
#		rotation_input = 0.0
#
#	elif Input.get_action_strength("rotate_right"):
#		rotation_input = 1.0
#		self.emit_signal("rotation_input_sent", rotation_input)
#
#	if Input.is_action_just_released("rotate_right"):
#		rotation_input = 0.0

#	print(rotation_input)
