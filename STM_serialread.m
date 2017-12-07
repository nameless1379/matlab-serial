len = num_data;

total_bytes = (len + 1)*4;

fwrite(s,'data 1')
fwrite(s,13)
pause(1)

while(s.BytesAvailable > 0)
    fread(s,s.BytesAvailable,'uint8');
end

while(s.BytesAvailable < total_bytes + 3)
end
sync_seq = fread(s,total_bytes + 3,'uint8');

i = 1;
while(sync_seq(i) ~= 221 || sync_seq(i + 1) ~= 204 || ...
        sync_seq(i + 2) ~= 187 || sync_seq(i + 3) ~= 170)
    i = i + 1;
end

j = 0;
while(j < i + total_bytes * 2)
    if(s.BytesAvailable > 0)
        flush = fread(s,s.BytesAvailable,'uint8');
        j = j + length(flush);
    end
end

count = 1;
data = zeros(num_data, max(data_len));
while(true)
    if(s.BytesAvailable >= total_bytes)
        out = fread(s,s.BytesAvailable,'uint8');
        format short
        
        data_curr = zeros(1,num_data);
        for i = 1:num_data
            data_start = 4 * i + 1;
            data_curr(i) = mod(count,data_len(i)) + 1;
            data(i,data_curr(i)) = typecast(uint8(out(data_start:data_start + 3)) ...
                ,data_type(i,:)); 
        end
        
......Put 'STM_serialplot' or 'STM_serialsave' here to plot graph or etc...
        
        STM_serialplot1;
        %STM_serialplot2;
        %STM_serialsave;
        
...........................................................................
        
        count = count + 1;
    end
end