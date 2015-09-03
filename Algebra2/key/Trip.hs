
module Trip where

-- Type 1 problem:
-- Given fw_speed, rt_speed and rt_time
-- Calculate fw_time
solve1 fw_speed rt_speed rt_time = fw_time
    where
    rt_dist = rt_time * rt_speed
    fw_dist = rt_dist
    fw_time = fw_dist / fw_speed


    