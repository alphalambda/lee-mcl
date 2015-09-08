module Mix where

type Amount = Double
type Rate = Double

-- | The "Mix" data structure is used to represent mixtures.
-- Examples:
-- 3 gal. of fruit punch with 45% fruit juice: Mix 3 45
-- 73 kb. of an alloy containing 35% copper:   Mix 73 35
-- 3 lb. of sugar that costs $7/lb:            Mix 3 7
data Mix = Mix Amount Rate

-- Compute the total amount and the equivalent rate that you
-- get when you mix two amounts at different rates
add (Mix amt1 rate1) (Mix amt2 rate2) = Mix amt_out rate_out
    where amt_out = blank
          rate_out = blank

-- Compute how much of one mixture and at what rate you need
-- to add to another one to get a specific given output.
-- In other words, solve for amt2 and rate2 the following equation:
-- add (Mix amt1 rate1) (Mix amt2 rate2) = Mix amt_out rate_out
sub (Mix amt_out rate_out) (Mix amt1 rate1) = Mix amt2 rate2
    where amt2 = blank
          rate2 = blank

-- Solve for amt1 the following equation:
-- add (Mix amt1 rate1) (Mix amt2 rate2) = Mix (amt1+amt2) rate
solve_amt rate1 mix2@(Mix amt2 rate2) rate = amt1
    where amt1 = blank

-- Solve for x the following equation:
-- add (Mix x rate1) (Mix (1-x) rate2) = Mix 1 rate
solve_ratios rate1 rate2 rate = (x,1-x)
    where x = blank

-- These two are auxiliary functions that come handy
grade (Mix amt rate) = amt*rate
amount rate grade = grade / rate

          
-------------------------------------------------------------------------------          
blank = error "You need to replace the blanks with your answers"
