fwrite(s,'data')
fwrite(s,13)

try  
fclose(s);  
catch err  
fprintf('%s FAIL TO CLOSE ', s.Name);  
return  
end  
delete(s);  
clear s
 