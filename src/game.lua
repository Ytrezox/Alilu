require (src/entities)
function GAME.load()
    GAME:load()

    Vague= ENTITIES:new(type,id,x,y)
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