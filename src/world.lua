require("config")
World = {}
World.__index = World

function World:new(map)
    local instance = setmetatable({}, World)
    instance.map = map
    instance.image= love.graphics.newImage("assets/entities/test.png")
    return instance
end
function World:draw()
    for y = 1, #self.map do
        for x = 1, #self.map[y] do
            if self.map[y][x] ~= 0 then
                love.graphics.rectangle("fill", x * 32, y * 32, CONFIG.TILES.SIZE, CONFIG.TILES.SIZE)
            end
            if self.map[y][x] == 2 then
                love.graphics.draw(self.image,x * 32, y * 32)
            end
        end
    end
end
