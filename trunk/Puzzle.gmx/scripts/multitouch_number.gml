//Returns the number of fingers on the screen
var i,count;

count=0
for(i=0; i<5; i+=1){
    count+=YoYo_MouseCheckButton(i,mb_left)
}
return count;
