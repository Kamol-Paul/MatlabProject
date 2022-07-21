fileID = fopen("input.txt", 'r');
line = fgetl(fileID);
signal = str2num(line);
plot(signal);