ENTITIES = {}
ENTITIES.__index= ENTITIES
require("CONFIG")

function ENTITIES:new(type, id)
    local instance = setmetatable({}, ENTITIES)
    instance.type = type
    instance.id = id
    if id == 2 then
        instance.image = love.graphics.newImage("assets/entities/test.png")
    elseif id == 3 then
        instance.image1 = love.graphics.newImage("assets/entities/test2.png")
    elseif id == 4 then
        instance.image2 = love.graphics.newImage("assets/entities/test3.png")
    end
    
    
    return instance
end



function ENTITIES:update(dt)
    if love.mouse.isDown(1) then
        ENTITIES.type = false
    end 
end

function ENTITIES:draw()

end

