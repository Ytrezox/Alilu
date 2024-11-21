require ("src/entities")
require("src/world")
require("src/grid")
Game = {}

function Game:load()
    WORLD1 = World:new(GRID)
    Vague= ENTITIES:new(true,2,150,150)
    Rond = ENTITIES:new(true,3,250,250)

end

function Game:update(dt)
    Vague:update(dt)
    Rond:update(dt)
end

function Game.draw()
    WORLD1:draw()
    Vague:draw()
    Rond:draw()

end