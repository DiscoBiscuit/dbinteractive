var resource,amount;
resource = string_letters(argument0)

amount = real(string_digits(argument0))

if(resource="pop"){return (obj_gui.population>=amount)}
if(resource="wood"){return (obj_gui.wood>=amount)}
if(resource="food"){return (obj_gui.food>=amount)}
if(resource="stone"){return (obj_gui.stone>=amount)}
