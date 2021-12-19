class_name GameVersionLabel
extends Label


# ----------------------------- DECLARE VARIABLES ------------------------------




# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self.text = "V " + ProjectSettings.get_setting("application/config/version")


# ------------------------------ DECLARE FUNCTIONS -----------------------------
