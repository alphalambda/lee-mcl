
module Key_trip where
import qualified Trip

-- Problem 1
-- A cargo plane flew to Moscow and back.
-- On the trip there it flew 352 km/h and on
-- the return trip it went 440 km/h. How
-- long did the trip there take if the return
-- trip took four hours?

-- This is an example of how to write a program
-- to solve the problem:
solution01 = forward_time
    where
    forward_speed = 352 -- km/h
    return_speed = 440 -- km/h
    return_time = 4 -- hours
    return_dist = return_time * return_speed
    forward_dist = return_dist
    forward_time = forward_dist / forward_speed

-- Problem 2
-- Kali drove to the train station and back.
-- On the trip there she drove 20 mph and on
-- the return trip she went 30 mph. How long
-- did the trip there take if the return trip
-- took two hours?
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
    -- data
    aliyah_time = 4
    aliyah_speed = 60
    anjali_time = aliyah_time + 1
    -- calculations
    aliyah_dist = aliyah_time * aliyah_speed
    anjali_dist = aliyah_dist
    anjali_speed = anjali_dist / anjali_time

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
    -- data
    shreya_speed = 24
    matt_speed = 60
    matt_time = 2
    -- calculations
    matt_dist = matt_time * matt_speed
    shreya_dist = matt_dist
    shreya_time = shreya_dist / shreya_speed
   
-- Problem 5
-- A passenger plane made a trip to Jakarta
-- and back. On the trip there it flew 240
-- mph and on the return trip it went 320
-- mph. How long did the trip there take if
-- the return trip took six hours?
solution05 = forward_time
    where
    forward_speed = 240
    return_speed = 320
    return_time = 6
    return_dist = return_time * return_speed
    forward_dist = return_dist
    forward_time = forward_dist / forward_speed

-- Problem 6
-- A cargo plane and a passenger plane left
-- the airport at the same time. The planes
-- flew in opposite directions. The passenger
-- plane flew 25 km/h faster than the cargo
-- plane. After 12 hours they were 4380 km
-- apart. Find the cargo plane's speed.
solution06 = cargo_speed
    where
    total_distance = 4380
    total_time = 12
    passenger_plane_speedup = 25
    cargo_speed = (d/t-s)/2
        where
        d = total_distance
        t = total_time
        s = passenger_plane_speedup
    
-- Problem 7
-- Jill made a trip to her friend's house and
-- back. The trip there took three hours and the
-- trip back took four hours. She averaged 10 mph
-- faster on the trip there than on the return trip.
-- What was Jill's average speed on the outbound trip? 
solution07 = forward_speed
    where
    forward_time = 3
    return_time = 4
    forward_speedup = 10
    return_speed = ft * fs / (rt - ft)
        where
        ft = forward_time
        fs = forward_speedup
        rt = return_time
    forward_speed = return_speed + forward_speedup

-- Problem 8
-- Maria made a trip to the recycling plant
-- and back. The trip there took three hours
-- and the trip back took five hours. She
-- averaged 36 mph on the return trip. Find
-- the average speed of the trip there.
solution08 = forward_speed
    where
    forward_time = 3
    return_time = 5
    return_speed = 36
    return_dist = return_time * return_speed
    forward_dist = return_dist
    forward_speed = forward_dist / forward_time

-- Problem 9
-- A fishing boat traveled to Guam and back.
-- It took one hour longer to go there than it
-- did to come back. The average speed on the trip
-- there was 20 km/h. The average speed on the way
-- back was 24 km/h. How many hours did the trip there
-- take?
solution09 = forward_time
    where
    forward_speed = 20
    return_speed = 24
    forward_delay = 1
    return_time = forward_speed*forward_delay/(return_speed-forward_speed)
    forward_time = return_time + forward_delay

-- Problem 10
-- Shawna and Chelsea left the airport at the
-- same time. They drove in opposite directions.
-- Chelsea drove 20 mph faster than Shawna.
-- After one hour they were 110 mi. apart.
-- Find Shawna's speed.
solution10 = Trip.solve2 20 110 1

-- Problem 11
-- Imani traveled to the train station and
-- back. It took 0.8 hours less time to get
-- there than it did to get back. The average
-- speed on the trip there was 57.2 mph. The
-- average speed on the way back was 22 mph.
-- How many hours did the trip there take?
solution11 = Trip.solve3 57.2 22 0.8

-- Problem 12
-- An Air Force plane left the airport and
-- flew toward Moscow. After 2.1 hours, a jet
-- left, flying 62.3 km/h faster in an effort to
-- catch up. After 8.4 hours, the jet finally
-- caught up. Find the Air Force plane's
-- average speed.
solution12 = af_speed
    where
    jet_time = 8.4
    jet_speed = 62.3
    af_time = jet_time + 2.1
    jet_dist = jet_time * jet_speed
    af_dist = jet_dist
    af_speed = af_dist / af_time

-- Problem 13
-- Sumalee traveled to the recycling plant
-- and back. It took 0.8 hours less time to
-- get there than it did to get back. The
-- average speed on the trip there was 77 km/h.
-- The average speed on the way back was 49 km/h.
-- How many hours did the trip there take?
solution13 = Trip.solve3 77 49 0.8

-- Problem 14
-- An Air Force plane left London and flew
-- east. A cargo plane left 0.9 hours later
-- flying 75.6 mph faster in an effort to catch
-- up to it. After four hours the cargo plane
-- finally caught up. What was the Air Force
-- plane's average speed?
solution14 = af_speed
    where
    cargo_speed = 75.6
    cargo_time = 4
    af_time = 4.9
    cargo_dist = cargo_time * cargo_speed
    af_dist = cargo_dist
    af_speed = af_dist / af_time
    
-- Problem 15
-- Amanda drove to the town hall and back.
-- It took 2.4 hours longer to go there than it
-- did to come back. The average speed on
-- the trip there was 25.5 km/h. The average speed
-- on the way back was 56.1 km/h.
-- How many hours did the trip there take?
solution15 = 2.4 + Trip.solve3 56.1 25.5 2.4

--------------------------------------------------------          
blank = error "You need to replace the blanks with your answers"
