
module Key_mix where

-- Problem 16
-- 8 oz of premium salad mix was made by
-- combining 6 oz of arugula which costs
-- $2/oz with 2 oz of spinach, which costs
-- $6/oz. Find the cost per oz of the mixture.
solution16 = salad_rate
    where
    -- Collect data
    salad_amount = 8   -- oz
    arugula_amount = 6 -- oz
    arugula_rate = 2   -- $/oz
    spinach_amount = 2 -- oz
    spinach_rate = 6   -- $/oz
    -- Do calculations
    arugula_totalcost = arugula_amount * arugula_rate
    spinach_totalcost = spinach_amount * spinach_rate
    salad_totalcost = arugula_totalcost + spinach_totalcost
    salad_rate = salad_totalcost / salad_amount

-- Problem 17
-- For his birthday party Sarawong mixed
-- together 8 gal. of Brand A fruit punch and
-- 4 gal. of Brand B. Brand A contains 24%
-- fruit juice and Brand B contains 6% fruit
-- juice. What percent of the mixture is fruit juice?
solution17 = juice_percent
    where
    brandA_amt = 8
    brandA_pct = 24
    brandB_amt = 4
    brandB_pct = 6
    juice_amt = brandA_amt + brandB_amt
    brandA_fruit = brandA_amt * brandA_pct
    brandB_fruit = brandB_amt * brandB_pct
    juice_fruit = brandA_fruit + brandB_fruit
    juice_pct = juice_fruit / juice_amt
    
-- Problem 18
-- For her birthday party Kristin mixed
-- together 3 L of Brand A fruit punch and 5
-- L of Brand B. Brand A contains 34% fruit
-- juice and Brand B contains 26% fruit juice.
-- What percent of the mixture is fruit juice?
solution18 = blank

-- Problem 19
-- 4 lb of peanuts which cost $1/lb were
-- combined with 2 lb of spices which cost
-- $4/lb. Find the cost per lb of the mixture.
solution19 = blank

-- Problem 20
-- A metal alloy weighing 5 mg and
-- containing 56% gold is melted and mixed
-- with 6 mg of a different alloy which contains
-- 34% gold. What percent of the resulting alloy
-- is gold?
solution20 = blank
    
-- Problem 21
-- How many lbs. of mixed nuts that contains
-- 48% peanuts must Lea add to 4 lbs. of
-- peanuts to make a mixture with 64%
-- peanuts?
solution21 = blank

-- Problem 22
-- Castel made a nut mixture that contains
-- 84% peanuts by mixing 5 kg of mixed
-- nuts with 10 kg of peanuts. The mixed
-- nuts contained what percent peanuts?
solution22 = blank
          
-- Problem 23
-- Stefan wants to make a 14% saline
-- solution. He has already poured 3 ml of a
-- 18% saline solution into a beaker. How
-- many ml of a 12% saline solution must he
-- add to this to create the desired mixture?
solution23 = blank

-- Problem 24
-- How many lb of copper which costs $6/lb
-- must be added to 1 lb of tin which costs
-- $9/lb to make bronze which costs $7/lb?
solution24 = blank

-- Problem 25
-- 3 lb of brand X sugar were mixed with 1 lb
-- of brand Y sugar, which costs $5/lb, to make
-- generic sugar, which costs $2/lb.
-- What is the price per lb of brand X sugar?
solution25 = blank

-- Problem 26
-- A metallurgist needs to make 6.5 lb. of an
-- alloy containing 50% silver. He is going
-- to melt and combine one metal that is 80%
-- silver with another metal that is 30%
-- silver. How much of each solution should he use?
solution26 = (amount1,amount2)
    where
    amount1 = blank
    amount2 = blank
          
-- Problem 27
-- Jose wants to make 12.5 qt. of a 42%
-- sugar solution by mixing together a 10%
-- sugar solution and a 50% sugar solution.
-- How much of each solution must he use?
solution27 = (amount1,amount2)
    where
    amount1 = blank
    amount2 = blank

-- Problem 28
-- Jenny asked you to make 8.4 gal. of fruit
-- punch that contains 45% fruit juice by
-- mixing together some amount of Brand A
-- fruit punch and some amount of Brand B
-- fruit punch. Brand A contains 50% fruit
-- juice and Brand B contains 35% fruit
-- juice. How much of each do you need?
solution28 = (amount1,amount2)
    where
    amount1 = blank
    amount2 = blank

-- Problem 29
-- Julia wants to make 7.8 L of a 55% sugar
-- solution by mixing together a 70% sugar
-- solution and a 40% sugar solution. How much
-- of each solution must she use?
solution29 = (amount1,amount2)
    where
    amount1 = blank
    amount2 = blank
    
-- Problem 30
-- A metallurgist needs to make 12.6 kg of an
-- alloy containing 80% copper. He is going to
-- melt and combine one metal that is 40%
-- copper with pure copper. How much of
-- each should he use?
solution30 = (amount1,amount2)
    where
    amount1 = blank
    amount2 = blank
          
------------------------------------------------------
blank = error "You need to replace the blanks with your answers"
