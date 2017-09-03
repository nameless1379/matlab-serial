figure(1)
if data_plot(1)
    if count <= data_len(1)
        data_y1 = double(data(1,1:data_len(1)))*data_moduler(1);
        plot(1:data_len(1),data_y1)
        xlim([0 data_len(1)]); 
    else
        data_y1 = double(...
            data(1,[data_curr(1)+1:data_len(1) 1:data_curr(1)]))*data_moduler(1);  
        plot(count - data_len(1):count-1,data_y1)
        xlim([count - data_len(1) count-1]);
    end
    
    if data_yaxis(1,1) ~= 0 || data_yaxis(1,2) ~= 0
        ylim(data_yaxis(1,:));
    end
end

hold on

if data_plot(3)
    if count <= data_len(3)
        data_y2 = double(data(3,1:data_len(3)))*data_moduler(3);
        plot(1:data_len(3),data_y2,'r')
        xlim([0 data_len(3)]); 
    else
        data_y2 = double(...
            data(3,[data_curr(3)+1:data_len(3) 1:data_curr(3)]))*data_moduler(3);  
        plot(count - data_len(3):count-1,data_y2,'r')
        xlim([count - data_len(3) count-1]);
    end
    
    if data_yaxis(3,1) ~= 0 || data_yaxis(3,2) ~= 0
        ylim(data_yaxis(3,:));
    end
end
hold off

figure(2)
if data_plot(2)
    if count <= data_len(2)
        data_y3 = double(data(2,1:data_len(2)))*data_moduler(2);
        plot(1:data_len(2),data_y3)
        xlim([0 data_len(2)]); 
    else
        data_y3 = double(...
            data(2,[data_curr(2)+1:data_len(2) 1:data_curr(2)]))*data_moduler(2);  
        plot(count - data_len(2):count-1,data_y3)
        xlim([count - data_len(2) count-1]);
    end
    
    if data_yaxis(2,1) ~= 0 || data_yaxis(2,2) ~= 0
        ylim(data_yaxis(2,:));
    end
end

hold on

if data_plot(4)
    if count <= data_len(4)
        data_y4 = double(data(4,1:data_len(4)))*data_moduler(4);
        plot(1:data_len(4),data_y4,'r')
        xlim([0 data_len(4)]); 
    else
        data_y4 = double(...
            data(4,[data_curr(4)+1:data_len(4) 1:data_curr(4)]))*data_moduler(4);  
        plot(count - data_len(4):count-1,data_y4,'r')
        xlim([count - data_len(4) count-1]);
    end
    
    if data_yaxis(4,1) ~= 0 || data_yaxis(4,2) ~= 0
        ylim(data_yaxis(4,:));
    end
end
hold off
