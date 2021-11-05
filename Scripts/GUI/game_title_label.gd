class_name GameTitleLabel
extends Label


# ----------------------------- DECLARE VARIABLES ------------------------------




# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self.text = ProjectSettings.get_setting("application/config/name")


# ------------------------------ DECLARE FUNCTIONS -----------------------------
