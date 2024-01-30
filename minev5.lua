local robot = require("robot")

local width = 10
local lenth = 10


for i = 1, width do
    robot.swing()
    robot.forward()
    for i = 1 , lenth do 
        robot.turnright()
        robot.swing()
        robot.forward()
        robot.turnright()
    end
end

