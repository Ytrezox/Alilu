ENTITIES = {}
Entity.__index= ENTITIES

function ENTITIES:new(type,id,x,y)
    local instance = setmetatable({},ENTITIES)
    instance.type = type
    instance.id = id
    instance.x = x
    instance.y = y
    
return instance
end

function ENTITIES:update(dt)

end

function ENTITIES.draw()

end
