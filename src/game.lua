require("src/world")
require("src/grid")

Game = {}

function Game:load()
    WORLD1 = World:new(GRID)
end

function Game:update(dt)

end

function Game:draw()
    WORLD1:draw()
end