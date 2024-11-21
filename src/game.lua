require ("src/entities")
GAME = {}
function GAME.load()

    Vague= ENTITIES:new(true,1,150,150)
    Rond = ENTITIES:new(true,2,250,250)
end

function GAME.update(dt)
    Vague:update(dt)
    Rond:update(dt)
end

function GAME.draw()
    Vague:draw()
    Rond:draw()
end