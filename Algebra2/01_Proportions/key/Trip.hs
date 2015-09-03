
module Trip where

-- Type 1 problem:
-- Given fw_speed, rt_speed and rt_time
-- Calculate fw_time
solve1 fw_speed rt_speed rt_time = fw_time
    where
    rt_dist = rt_time * rt_speed
    fw_dist = rt_dist
    fw_time = fw_dist / fw_speed

-- Type 2 problem:
-- Two objects start a same point
-- They move in opposite directions at different speeds
-- Inputs:
-- dv is the difference in speeds
-- t is the total time travelled
-- d is the total distance travelled
-- Output:
-- The speed of the slower object
solve2 dv d t = (d/t-dv)/2

-- Type 3 problem:
-- An object travels back and forth at different speeds
-- Inputs:
-- vfast is the speed in the fast trip
-- vslow is the speed in the slow trip
-- delay is the difference in times
-- Output:
-- The time in the fast trip
solve3 vfast vslow delay = vslow*delay/(vfast-vslow)
