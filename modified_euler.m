clear all;
clc;
f=input('Enter the slope function- '); %enter function like for eg. @(x) x^2+1
startpoint=input('Enter the starting point- ');
endpoint=input('Enter the ending point- ');
interval=input('Enter number of intervals- ');
intercept=input('Enter intercept- ');
interval_size=(endpoint-startpoint)/interval;

for i=1:interval
    for_pred=f(intercept);
    old_intercept=intercept;
    intercept = intercept + f(intercept)*interval_size;
    for_corr=f(intercept);
    avg_slope=(for_corr+for_pred)/2;
    intercept = old_intercept + avg_slope*interval_size;
    disp(intercept);
end

%@(x) (-2.2067*10^(-12))*((x.^4)-81*(10^8))
 