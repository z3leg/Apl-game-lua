local Player = require "bin.tinyclass"()

function Player:__init(x,y)
    self.x = x
    self.y = y
    return self
end

function Player:update(dt)
    -- body
end

function Player:draw()
    -- body
end