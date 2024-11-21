ENTITIES = {}
ENTITIES.__index= ENTITIES
require("CONFIG")

function ENTITIES:new(type,id,x,y)
        local instance = setmetatable({},ENTITIES)
        instance.type = type
        instance.id = id
        instance.x= x
        instance.y= y
            if id == 2 then
                 instance.image = love.graphics.newImage("assets/entities/test.png")
            end     
        ENTITIES[#ENTITIES + 1] = instance
        return instance
end


function ENTITIES:update(dt)
    if love.mouse.isDown(1) then
        ENTITIES.type = false
    end 
end

function ENTITIES:draw()
    if self.id ==2 then
        love.graphics.draw(self.image)
    end
end

