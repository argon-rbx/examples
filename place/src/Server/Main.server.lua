local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Clickable = ReplicatedStorage.Models:WaitForChild("Clickable")
local Car = ReplicatedStorage.Models:WaitForChild("Car")

local car = Car:Clone()
Clickable:Clone().Parent = car

car.Parent = workspace
