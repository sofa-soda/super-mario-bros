extends Node

var levels = LevelEvents.new()

class LevelEvents:
	signal level_started(level_num: String)
