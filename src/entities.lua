ENTITIES = {}
Entity.__index= ENTITIES

function ENTITIES:new(type,id,x,y,w,h)
    local instance = setmetatable({},ENTITIES)
    instance.type = type
    instance.id = id
    instance.x = x
    instance.y = y
    instance.w = 32
    instance.h = 32
return instance
end

function ENTITIES.update(dt)

end

function ENTITIES.draw()

end
