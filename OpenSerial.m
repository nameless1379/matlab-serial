clear

STM_serialparam

s = serial(scom);

set(s,'BaudRate',Baudrate);
fopen(s);

fwrite(s,13)
