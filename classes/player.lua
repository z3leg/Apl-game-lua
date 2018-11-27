local Player = require "bin.tinyclass"()
--vector = require("hump.vector")

function Player:__init(x, y)
   self.x = x
   self.y = y
   return self
end

function Player:update(dt)
   --self.y = self.y - 1
end

function Player:draw()
   love.graphics.rectangle("fill", 3, 3, 20, 20 )
end

return Player