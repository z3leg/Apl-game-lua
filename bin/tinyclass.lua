return function()
    local class = setmetatable({}, {
        __call = function(self, ...)
            local inst = setmetatable({}, self)
            inst:__init(...)
            return inst
        end,
    })
    class.__index = class
    return class
 end