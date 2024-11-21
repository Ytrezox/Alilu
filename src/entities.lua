ENTITIES = {}
ENTITIES.__index= ENTITIES
require("CONFIG")

function ENTITIES:new(type,id,x,y)
    local instance = setmetatable({},ENTITIES)
    instance.type = type
    instance.id = id
    instance.x = x
    instance.y = y   
return instance
end

function ENTITIES:update(dt)
    if love.mouse.isDown(1) then
        ENTITIES.type = false
    end 
end

function ENTITIES:draw()
   love.graphics.rectangle("fill",x,y,32,32)
end
