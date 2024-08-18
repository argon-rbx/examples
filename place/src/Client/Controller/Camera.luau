local Settings = require(game.ReplicatedStorage.Settings)

local Camera = {}
Camera.__index = Camera

function Camera.new()
	local self = setmetatable({}, Camera)

	self.fov = Settings.Camera.FOV

	return self
end

function Camera:setup()
	workspace.CurrentCamera.FieldOfView = self.fov
end

return Camera
