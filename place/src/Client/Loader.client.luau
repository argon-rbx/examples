local ContentProvider = game:GetService("ContentProvider")

local Assets = require(game.ReplicatedStorage.Assets)
local Utils = require(game.ReplicatedStorage.Utils)

ContentProvider:PreloadAsync(Utils.flatten(Assets))
