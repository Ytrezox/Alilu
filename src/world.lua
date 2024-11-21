require("config")
World = {}
World.__index = World
Entity = {}  


function World:new(map)
    local instance = setmetatable({}, World)
    instance.map = map
    instance.entities = {}  
    return instance
end

function World:addEntity(entity)
    table.insert(self.entities, entity)  
end

function World:draw()
    for y = 1, #self.map do
        for x = 1, #self.map[y] do
            if self.map[y][x] ~= 0 then
                love.graphics.rectangle("fill", x * 32, y * 32, CONFIG.TILES.SIZE, CONFIG.TILES.SIZE)
            end
        end
    end

    for _, entity in ipairs(self.entities) do
        for y = 1, #self.map do
            for x = 1, #self.map[y] do
                if self.map[y][x] == 2 and entity.image then
                    love.graphics.draw(entity.image, x * 32, y * 32)
                elseif self.map[y][x] == 3 and entity.image1 then
                    love.graphics.draw(entity.image1, x * 32, y * 32)
                elseif self.map[y][x] == 4 and entity.image2 then
                    love.graphics.draw(entity.image2, x * 32, y * 32)
                end
            end
        end
    end
end
