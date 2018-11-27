vector = require("hump.vector")

local projectile = require "classes.projectile"
local player = require "classes.player"


local mvmSpeed = 0.3
local projectiles = {}

player(10,10)

function love.keypressed(key)
    if key == "space" then
        table.insert(projectiles, projectile(x, y))
    end
end

function love.update(dt)
    for k, v in pairs(projectiles) do
        v:update(dt)
    end
end

function love.draw()
   love.graphics.print(tostring(#projectiles))
   --love.graphics.rectangle("fill", x, y, 20, 20)
   player:draw()

   if love.keyboard.isDown("left") then
     x = x - speed
   elseif  love.keyboard.isDown("right") then
       x = x + speed
   end

   if love.keyboard.isDown("up") then
       y = y - speed
   elseif love.keyboard.isDown("down") then
       y = y + speed
   end

   for _, v in pairs(projectiles) do
       v:draw()
   end

end