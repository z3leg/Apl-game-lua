local projectile = require "bin.tinyclass"()

function projectile:__init(x, y)
   self.x = x
   self.y = y
   return self
end

function projectile:update(dt)
   self.y = self.y - 6
end

function projectile:draw()
   love.graphics.circle("fill", self.x, self.y, 10, 10 )
end

return Projectile