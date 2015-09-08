
import qualified Trip
import qualified Mix
import Mix(Mix(..))

-- Problem 1
-- A cargo plane flew to Moscow and back.
-- On the trip there it flew 352 km/h and on
-- the return trip it went 440 km/h. How
-- long did the trip there take if the return
-- trip took four hours?

solution01 = forward_time
    where forward_time = Trip.time forward_dist forward_speed
          forward_speed = 352
          return_speed = 440
          forward_dist = return_dist
          return_dist = Trip.dist return_time return_speed
          return_time = 4

-- Problem 3
-- Anjali left the hardware store and travelled
-- south. Aliyah left one hour later travelling
-- at 60 mph in an effort to catch up to
-- Anjali. After travelling for four hours
-- Aliyah finally caught up. Find Anjali's
-- average speed.

solution03 = anjali_speed
    where anjali_speed = Trip.speed anjali_dist anjali_time
          anjali_time = 1 + aliyah_time
          aliyah_time = 4
          anjali_dist = aliyah_dist
          aliyah_dist = Trip.dist aliyah_time aliyah_speed
          aliyah_speed = 60

-- Problem 5
-- A passenger plane made a trip to Jakarta
-- and back. On the trip there it flew 240
-- mph and on the return trip it went 320
-- mph. How long did the trip there take if
-- the return trip took six hours?

solution05 = forward_time
    where forward_speed = 240
          return_speed = 320
          return_time = 6
          return_dist = Trip.dist return_time return_speed
          forward_time = Trip.time forward_dist forward_speed
          forward_dist = return_dist

-- Problem 7
-- Jill made a trip to her friend's house and
-- back. The trip there took three hours and the
-- trip back took four hours. She averaged 10 mph
-- faster on the trip there than on the return trip.
-- What was Jill's average speed on the outbound trip?          
solution07 = blank

-- Problem 10
-- Shawna and Chelsea left the airport at the
-- same time. They drove in opposite directions.
-- Chelsea drove 20 mph faster than Shawna.
-- After one hour they were 110 mi. apart.
-- Find Shawna's speed.
solution10 = blank

-- Problem 11
-- Imani travelled to the train station and
-- back. It took 0.8 hours less time to get
-- there than it did to get back. The average
-- speed on the trip there was 57.2 mph. The
-- average speed on the way back was 22 mph.
-- How many hours did the trip there take?
solution11 = blank

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

-- Problem 17
-- For his birthday party Sarawong mixed
-- together 8 gal. of Brand A fruit punch and
-- 4 gal. of Brand B. Brand A contains 24%
-- fruit juice and Brand B contains 6% fruit
-- juice. What percent of the mixture is fruit juice?
solution17 = rate
    where Mix _ rate = Mix.add brandA brandB
          brandA = Mix 8 24
          brandB = Mix 4 6

-- Problem 19
-- 4 lb of peanuts which cost $1/lb were
-- combined with 2 lb of spices which cost
-- $4/lb. Find the cost per lb of the mixture.
solution19 = rate
    where Mix _ rate = Mix.add peanuts spices
          peanuts = Mix 4 1
          spices = Mix 2 4

-- Problem 21
-- How many lbs. of mixed nuts that contains
-- 48% peanuts must Lea add to 4 lbs. of
-- peanuts to make a mixture with 64%
-- peanuts?
solution21 = amt2 * ratio2 / ratio1
    where (ratio1,ratio2) = Mix.solve_ratios 48 100 64
          amt2 = 4
          
-- Problem 23
-- Stefan wants to make a 14% saline
-- solution. He has already poured 3 ml of a
-- 18% saline solution into a beaker. How
-- many ml of a 12% saline solution must he
-- add to this to create the desired mixture?
solution23 = amt2 * ratio2 / ratio1
    where (ratio1,ratio2) = Mix.solve_ratios 18 12 14
          amt2 = 3

-- Problem 25
-- 3 lb of brand X sugar were mixed with 1 lb
-- of brand Y sugar, which costs $5/lb, to make
-- generic sugar, which costs $2/lb.
-- What is the price per lb of brand X sugar?
solution25 = brandX_cost
    where Mix _ brandX_cost = Mix.sub generic brandY
          generic = Mix 4 2
          brandY = Mix 1 5

-- Problem 26
-- A metallurgist needs to make 6.5 lb. of an
-- alloy containing 50% silver. He is going
-- to melt and combine one metal that is 80%
-- silver with another metal that is 30%
-- silver. How much of each solution should he use?
solution26 = blank
          
-- Problem 27
-- Jose wants to make 12.5 qt. of a 42%
-- sugar solution by mixing together a 10%
-- sugar solution and a 50% sugar solution.
-- How much of each solution must he use?
solution27 = (total*ratio1,total*ratio2)
    where (ratio1,ratio2) = Mix.solve_ratios 10 50 42
          total = 12.5

-- Problem 28
-- Jenny asked you to make 8.4 gal. of fruit
-- punch that contains 45% fruit juice by
-- mixing together some amount of Brand A
-- fruit punch and some amount of Brand B
-- fruit punch. Brand A contains 50% fruit
-- juice and Brand B contains 35% fruit
-- juice. How much of each do you need?
solution28 = blank

-- Problem 29
-- Julia wants to make 7.8 L of a 55% sugar
-- solution by mixing together a 70% sugar
-- solution and a 40% sugar solution. How much
-- of each solution must she use?
solution29 = (total*prop1,total*prop2)
    where (prop1,prop2) = Mix.solve_ratios 70 40 55
          total = 7.8
    
-- Problem 30
-- A metallurgist needs to make 12.6 kg of an
-- alloy containing 80% copper. He is going to
-- melt and combine one metal that is 40%
-- copper with pure copper. How much of
-- each should he use?
solution30 = (total*ratio1,total*ratio2)
    where (ratio1,ratio2) = Mix.solve_ratios 40 100 80
          total = 12.6
          
-------------------------------------------------------------------------------          
blank = error "You need to replace the blanks with your answers"
