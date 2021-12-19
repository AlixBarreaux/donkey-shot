class_name KeyboardLayoutLabelSetter
extends Control


# Check which layout the user's keyboard has and set the value on the label
# according to its exported values for either AZERTY or anything else. (usually QWERTY)


# ----------------------------- DECLARE VARIABLES ------------------------------


export var azerty_key: String = ""
export var qwerty_key: String = ""


# Node References
onready var label: Label = $Label


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()
	
	if OS.keyboard_get_layout_language(OS.keyboard_get_current_layout()) == "fr":
		self.label.set_text(self.azerty_key)
	else:
		self.label.set_text(self.qwerty_key)


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.azerty_key != "")
	assert(self.qwerty_key != "")
