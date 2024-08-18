local Camera = require(script.Camera)
local Input = require(script.Input)

local Controller = {}
Controller.__index = Controller

function Controller.new()
	local self = setmetatable({}, Controller)

	self.camera = Camera.new()
	self.input = Input.new()

	return self
end

function Controller:start()
	self.camera:setup()
	self.input:bind()
end

Controller.new():start()
