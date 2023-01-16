clc;
v = -5:0.01:5; %restriction for the graph is from -5 to 5
[x y] = meshgrid(v); %create array from x and y
A = y >= 0; %domain of y
B = 25 - x.^2 - y.^2 >= 0; %domain of x
B = double(B); %convert the array to double precision for further computations
A = double(A);
B(B == 0) = NaN; %replace zeroes with NaNs to not plot them
A(A == 0) = NaN;
C = times(A, B); %to keep only common points
surf(x,y,C);
view(0,90); %change to top view
axis equal; %data units are the same in every direction