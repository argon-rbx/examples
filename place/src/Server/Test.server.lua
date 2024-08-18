local Utils = require(game.ReplicatedStorage.Utils)

local eq = Utils.fuzzyEq

assert(eq(1.01, 1, 0.1))
assert(eq(500.001, 500.005, 0.01))
