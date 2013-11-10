var resource,amount,symbol,add;
resource = string_letters(argument0)

symbol = string_char_at(argument0,0)
if(symbol="+"){add=1}else{add=-1}

amount = real(string_digits(argument0))*add

if(resource="pop"){obj_control.population += amount}
if(resource="wood"){obj_control.wood += amount}
if(resource="food"){obj_control.food += amount}
