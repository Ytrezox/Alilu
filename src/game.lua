require ("src/entities")
require("src/world")
require("src/grid")
Game = {}

function Game:load()
    WORLD1 = World:new(GRID)
    Vague= ENTITIES:new(true,1,150,150)
    Rond = ENTITIES:new(true,2,250,250)

end

function Game:update(dt)

end

function Game.draw()

end