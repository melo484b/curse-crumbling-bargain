extends Node

var vision: float = 200.0
var connection: float = 1.0
var health_modifier: float = 1.0
var luck: float = 1.0
var time_modifier: float = 1.0
var boon_selection: int = 0
var score: int = 0
var wealth_multiplier: float = 1.0


func set_vision(vision_value: float) -> void:
	vision = vision_value


func get_vision() -> float:
	return vision


func set_connection(connection_value: float) -> void:
	connection = connection_value


func get_connection() -> float:
	return connection


func set_health_modifier(health_modifier_value: float) -> void:
	health_modifier = health_modifier_value


func get_health_modifier() -> float:
	return health_modifier


func set_luck(luck_value: float) -> void:
	luck = luck_value


func get_luck() -> float:
	return luck


func set_time_modifier(timer_modifier_value: float) -> void:
	time_modifier = timer_modifier_value


func get_time_modifier() -> float:
	return time_modifier


func set_boon_selection(boon_value: int) -> void:
	boon_selection = boon_value


func get_boon_selection() -> int:
	return boon_selection


func set_score(score_value: int) -> void:
	score = score_value


func get_score() -> int:
	return score


func set_wealth_multiplier(new_multiplier: float) -> void:
	wealth_multiplier = new_multiplier


func get_wealth_multiplier() -> float:
	return wealth_multiplier


func reset_player_data() -> void:
	vision = 200.0
	connection = 1.0
	health_modifier = 1.0
	luck = 1.0
	time_modifier = 1.0
	boon_selection = 0
	score = 0
	wealth_multiplier = 1.0
