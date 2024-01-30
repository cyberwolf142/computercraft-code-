local robot = require("robot")

local digDepth = 2 -- adjust based on desired depth
local areaSide = 10

function digAndClear(digDepth, clearLength)
  for i = 1, digDepth do
    robot.digDown()
  end
  for i = 1, clearLength do
    robot.digForward()
  end
end

for i = 1, areaSide do
  digAndClear(digDepth, areaSide)
  robot.turnRight()
  robot.forward()
end

robot.turnLeft()
robot.forward()

print("Finished digging the 10x10 area!")
