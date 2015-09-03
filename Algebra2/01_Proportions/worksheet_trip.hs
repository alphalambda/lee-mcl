
module Worksheet_trip where

-- Problem 1
-- A cargo plane flew to Moscow and back.
-- On the trip there it flew 352 km/h and on
-- the return trip it went 440 km/h. How
-- long did the trip there take if the return
-- trip took four hours?

-- This is an example of how to write a program
-- to solve the problem:
solution01 = forward_time -- Write here the variable
                          -- that holds the solution,
                          -- which is calculated below
    -- The keyword "where" introduces the rest
    -- of the program. The variables that follow
    -- this keyword are local to this problem and
    -- cannot be used in other problems.
    where
    
    -- Syntax notes:
    -- 1) All local variables must be indented to the
    --    right and aligned to each other.
    -- 2) Variables must begin with a lowercase letter
    --    and cannot have spaces in their names
    -- 3) Change Settings/Preferences/Tab Settings
    --    so that "Replace by space" is checked.
    
    -- First identify the data and save them into variables
    forward_speed = 352 -- km/h
    return_speed = 440 -- km/h
    return_time = 4 -- hours
    
    -- Since we have the return time and speed,
    -- we can calculate the return distance
    return_dist = return_time * return_speed
    
    -- Now, we can calculate the forward distance,
    -- because it is the same as the return distance
    forward_dist = return_dist
    
    -- Finally, from the forward distance and speed,
    -- we calculate the time it took
    forward_time = forward_dist / forward_speed

-- Problem 2
-- Kali drove to the train station and back.
-- On the trip there she drove 20 mph and on
-- the return trip she went 30 mph. How long
-- did the trip there take if the return trip
-- took two hours?

-- This is another example already solved for you:
solution02 = forward_time
    where
    -- Collect data into variables
    forward_speed = 20 -- mph
    return_speed = 30  -- mph
    return_time = 2    -- hours
    -- Now do the calculations
    return_dist = return_time * return_speed
    forward_dist = return_dist
    forward_time = forward_dist / forward_speed
          
-- Problem 3
-- Anjali left the hardware store and traveled
-- south. Aliyah left one hour later traveling
-- at 60 mph in an effort to catch up to
-- Anjali. After traveling for four hours
-- Aliyah finally caught up. Find Anjali's
-- average speed.
solution03 = anjali_speed
    where
    anjali_speed = blank

-- Problem 4
-- Shreya left the science museum and
-- traveled toward the mountains at an
-- average speed of 24 mph. Matt left some
-- time later traveling in the same direction
-- at an average speed of 60 mph. After traveling for
-- two hours Matt caught up with Shreya.
-- How long did Shreya travel before Matt caught up?
solution04 = shreya_time
    where
    shreya_time = blank
   
-- Problem 5
-- A passenger plane made a trip to Jakarta
-- and back. On the trip there it flew 240
-- mph and on the return trip it went 320
-- mph. How long did the trip there take if
-- the return trip took six hours?
solution05 = forward_time
    where
    forward_time = blank

-- Problem 6
-- A cargo plane and a passenger plane left
-- the airport at the same time. The planes
-- flew in opposite directions. The passenger
-- plane flew 25 km/h faster than the cargo
-- plane. After 12 hours they were 4380 km
-- apart. Find the cargo plane's speed.
solution06 = blank
    
-- Problem 7
-- Jill made a trip to her friend's house and
-- back. The trip there took three hours and the
-- trip back took four hours. She averaged 10 mph
-- faster on the trip there than on the return trip.
-- What was Jill's average speed on the outbound trip? 
solution07 = blank

-- Problem 8
-- Maria made a trip to the recycling plant
-- and back. The trip there took three hours
-- and the trip back took five hours. She
-- averaged 36 mph on the return trip. Find
-- the average speed of the trip there.
solution08 = blank

-- Problem 9
-- A fishing boat traveled to Guam and back.
-- It took one hour longer to go there than it
-- did to come back. The average speed on the trip
-- there was 20 km/h. The average speed on the way
-- back was 24 km/h. How many hours did the trip there
-- take?
solution09 = blank

-- Problem 10
-- Shawna and Chelsea left the airport at the
-- same time. They drove in opposite directions.
-- Chelsea drove 20 mph faster than Shawna.
-- After one hour they were 110 mi. apart.
-- Find Shawna's speed.
solution10 = blank

-- Problem 11
-- Imani traveled to the train station and
-- back. It took 0.8 hours less time to get
-- there than it did to get back. The average
-- speed on the trip there was 57.2 mph. The
-- average speed on the way back was 22 mph.
-- How many hours did the trip there take?
solution11 = blank

-- Problem 12
-- An Air Force plane left the airport and
-- flew toward Moscow. After 2.1 hours, a jet
-- left, flying 62.3 km/h faster in an effort to
-- catch up. After 8.4 hours, the jet finally
-- caught up. Find the Air Force plane's
-- average speed.
solution12 = blank

-- Problem 13
-- Sumalee traveled to the recycling plant
-- and back. It took 0.8 hours less time to
-- get there than it did to get back. The
-- average speed on the trip there was 77 km/h.
-- The average speed on the way back was 49 km/h.
-- How many hours did the trip there take?
solution13 = blank

-- Problem 14
-- An Air Force plane left London and flew
-- east. A cargo plane left 0.9 hours later
-- flying 75.6 mph faster in an effort to catch
-- up to it. After four hours the cargo plane
-- finally caught up. What was the Air Force
-- plane's average speed?
solution14 = blank

-- Problem 15
-- Amanda drove to the town hall and back.
-- It took 2.4 hours longer to go there than it
-- did to come back. The average speed on
-- the trip there was 25.5 km/h. The average speed
-- on the way back was 56.1 km/h.
-- How many hours did the trip there take?
solution15 = blank

-- Problem 16
-- 8 oz of premium salad mix was made by
-- combining 6 oz of arugula which costs
-- $2/oz with 2 oz of spinach, which costs
-- $6/oz. Find the cost per oz of the mixture.
solution16 = blank

--------------------------------------------------------          
blank = error "You need to replace the blanks with your answers"
