........General parameters............
scom = 'COM8'; %name of serial
Baudrate = 38400; %serial baudrate, should be same as the STM32 setting
num_data = 4; 

........Graph parameters..............
data_plot = [true true true true true true];%decide to plot the data or not    
data_len = [200 200 200 200 200 200];%num of data within one graph
data_yaxis = [[0 0];[0 0];[0 0];[0 0];[0 0];[0 0]];%Y axis, leave '0' for automated setting

........Data parameters...............
...type of data, all in 32-bit format
...'uint32' for 32_bit unsigned integer
...'int32' for 32_bit signed integer
...'single' for float-point number
data_type = ['single';'single';'single';'single';'single';'single'];
...original data multiplied with moduler, leave '1' for original data
...eg: put 180/pi here to convert Rad angle to Dec angle
data_moduler = [180/pi 180/pi 180/pi 180/pi 180/pi 180/pi];



    
