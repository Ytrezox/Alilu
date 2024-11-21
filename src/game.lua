require ("src/entities")
GAME = {}
function GAME.load()

    Vague= ENTITIES:new(true,1,150,150)
    Rond = ENTITIES:new(true,2,250,250)
require("src/world")
require("src/grid")

Game = {}

function Game:load()
    WORLD1 = World:new(GRID)
end

function love.update(dt)
    GAME:update(dt)
end

function love.draw()
    GAME:draw()
end