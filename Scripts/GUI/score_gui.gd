class_name ScoreGUI
extends HBoxContainer


# ----------------------------- DECLARE VARIABLES ------------------------------


# Signals to connect to
onready var signals_connections_list: PoolIntArray = [
	Global.connect("score_set", self, "update_score")
	]


# Node References
onready var counter_label: Label = $CounterLabel


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	GeneralHelpers.check_for_signals_initialization_errors(self, self.signals_connections_list)


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func update_score(value: int) -> void:
	self.counter_label.text = str(value)
