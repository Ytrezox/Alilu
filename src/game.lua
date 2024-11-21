require ("src/entities")
require("src/world")
require("src/grid")
Game = {}

function Game:load()
    WORLD1 = World:new(GRID)
    Vague= ENTITIES:new(true,2)
    Rond = ENTITIES:new(true,3)
    Double_vague=ENTITIES:new(true,4)
    WORLD1:addEntity(Vague) 
    WORLD1:addEntity(Rond) 
    WORLD1:addEntity(Double_vague) 

end

function Game:update(dt)
    Vague:update(dt)
    Rond:update(dt)
    Double_vague:update(dt)
end

function Game.draw()
    WORLD1:draw()
    Vague:draw()
    Rond:draw()
    Double_vague:draw()

end