local Projectile = require "bin.tinyclass"()

function Projectile:__init(x, y)
   self.x = x
   self.y = y
   return self
end

function Projectile:update(dt)
   self.y = self.y - 1
end

function Projectile:draw()
   love.graphics.circle("fill", self.x, self.y, 10, 10 )
end

return Projectile