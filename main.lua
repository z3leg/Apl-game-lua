vector = require("hump.vector")

local Projectile = require "classes.projectile"
local x = 300
local y = 300
local speed = 4
local projectiles = {}


function love.draw()
   love.graphics.print(tostring(#projectiles))
   love.graphics.rectangle("fill", x, y, 20, 20)
   if love.keyboard.isDown("left") then
       x = x - speed
   elseif  love.keyboard.isDown("right") then
       x = x + speed
   end
   if love.keyboard.isDown("up") then

       y = y - speed

   elseif  love.keyboard.isDown("down") then
       y = y + speed
   end

   for k, v in pairs(projectiles) do
       v:draw()
   end

end

function love.keypressed(key)
   if key == "space" then
       table.insert(projectiles, Projectile(x, y))
   end
end

function love.update(dt)
   for k, v in pairs(projectiles) do
       v:update(dt)
   end
end