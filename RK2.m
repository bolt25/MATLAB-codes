clear all;
clc;
f=input('Enter the slope function- '); %enter function like for eg. @(x) x^2+1
startpoint=input('Enter the starting point- ');
endpoint=input('Enter the ending point- ');
interval=input('Enter number of intervals- ');
y=input('Enter intercept- ');
interval_size=(endpoint-startpoint)/interval;

for i=1:interval
    k1=f(y);
    k2=f(y+k1*interval_size);
    y = y + (k1+k2)*(interval_size)/2;
end
disp(y);

%@(x) (-2.2067*10^(-12))*((x.^4)-81*(10^8))
