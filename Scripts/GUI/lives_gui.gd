class_name LivesGUI
extends HBoxContainer


# ----------------------------- DECLARE VARIABLES ------------------------------


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Global.connect("current_lives_set", self, "update_lives")
	]


# Node References
onready var counter_label: Label = $CounterLabel


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)
	self._initialize()

# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize() -> void:
	update_lives(Global.get_current_score())


func update_lives(value: int) -> void:
	self.counter_label.text = str(value)
