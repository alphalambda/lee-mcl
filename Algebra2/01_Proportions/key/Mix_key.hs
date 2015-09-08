module Mix where

type Amount = Double
type Rate = Double

data Mix = Mix Amount Rate

add (Mix amt1 rate1) (Mix amt2 rate2) = Mix amt rate
    where value1 = amt1 * rate1
          value2 = amt2 * rate2
          value = value1 + value2
          amt = amt1 + amt2
          rate = value / amt
          
sub (Mix amt rate) (Mix amt1 rate1) = Mix amt2 rate2
    where value = amt * rate
          value1 = amt1 * rate1
          value2 = value - value1
          amt2 = amt - amt1
          rate2 = value2 / amt2

grade (Mix amt rate) = amt*rate
amount rate grade = grade / rate

-- Solve for amt1 the following equation:
-- add (Mix amt1 rate1) (Mix amt2 rate2) = Mix (amt1+amt2) rate
solve_amt rate1 mix2@(Mix amt2 rate2) rate = amt1
    where amt1 = amount eff_rate1 (grade $ Mix amt2 eff_rate2)
          eff_rate1 = rate1 - rate
          eff_rate2 = rate - rate2

-- Solve for x the following equation:
-- add (Mix x rate1) (Mix (1-x) rate2) = Mix 1 rate
solve_ratios rate1 rate2 rate = (x,1-x)
    where x = (rate - rate2) / (rate1 - rate2)
