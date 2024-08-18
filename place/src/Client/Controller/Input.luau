local ContextActionService = game:GetService("ContextActionService")

local Settings = require(game.ReplicatedStorage.Settings)

local Input = {}
Input.__index = Input

function Input.new()
	local self = setmetatable({}, Input)

	self.actions = Settings.Keybinds

	return self
end

function Input:bind()
	for action, key in pairs(self.actions) do
		ContextActionService:BindAction(action, function(_name, state, _input)
			if state == Enum.UserInputState.Begin then
				print(action)
			end
		end, false, Enum.KeyCode[key])
	end
end

return Input
