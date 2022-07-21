fileId = fopen("input.txt", 'r');
h = str2num(fgetl(fileId));
n = -10:10;
y = UnitStepFunction(n);
x = del(n);
% hold on
% stem(n,y, ':diamondr', 'LineStyle','-.',...
%     'MarkerFaceColor','red', ...
%     'MarkerEdgeColor', 'green');
% stem(n,x,'x', 'MarkerFaceColor' , 'yellow');
% hold off



