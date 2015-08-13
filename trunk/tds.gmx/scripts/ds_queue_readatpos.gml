//Goal: To search through QueueName and return variable at QueuePos of QueueName
QueueName = argument[0];
QueuePos = argument[1];
TempQueue = ds_queue_create();
var ReturnFromTemp;

//Error Checking
if (QueuePos < 1) { show_error("Error: ds_queue_readatpos command requires a number greater than 0.",true); }

//Invert QueuePos (not necessary but I do it so that my brain functions right when searching)
var QueuePosInverted;
QueuePosInverted = QueuePos;
QueuePos = 1;

//Copy to temp for searching
ds_queue_copy(TempQueue,QueueName);

//Search temp ds
var X = 1;
    while (QueuePos < QueuePosInverted) {
            ds_queue_dequeue(TempQueue);
            QueuePos += 1;
    }
        
ReturnFromTemp = ds_queue_head(TempQueue);
    
ds_queue_destroy(TempQueue);
return ReturnFromTemp;
