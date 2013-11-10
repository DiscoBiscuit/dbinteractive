n = argument0^2 + argument1 * 57
n = (n<<13) ^ n;
return (( (n * (n * n * seed*15731 + 789221*argument2) + seed*1376312589*argument2)) / 1073741824*argument2) mod 255
