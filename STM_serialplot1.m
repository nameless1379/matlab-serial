figure(1)
for i = 1:num_data
if data_plot(i)
    subplot(3,1,i)
    if count <= data_len(i)
        data_y = double(data(i,1:data_len(i)))*data_moduler(i);
        plot(1:data_len(i),data_y)
        xlim([0 data_len(i)]); 
    else
        data_y = double(...
            data(i,[data_curr(i)+1:data_len(i) 1:data_curr(i)]))*data_moduler(i);  
        plot(count - data_len(i):count-1,data_y)
        xlim([count - data_len(i) count-1]);
    end
    
    if data_yaxis(i,1) ~= 0 || data_yaxis(i,2) ~= 0
        ylim(data_yaxis(i,:));
    end
end
end
