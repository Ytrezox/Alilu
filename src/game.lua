require (src/entities)
function GAME.load()
    GAME:load()

    Vague= ENTITIES:new(type,id,x,y)
end

function love.update(dt)
    GAME:update(dt)
end

function love.draw()
    GAME:draw()
end