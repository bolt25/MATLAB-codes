clear all;
clc;

n=input('Enter number of intervals: ');
startingpoint=input('Enter starting value: ');
endingpoint=input('Enter ending value: ');

sum=0;
h=(endingpoint-startingpoint)/n;
for i= 1:n-1
    sum = sum+forTrapz(startingpoint+i*h);
end
area=(h/2)*(forTrapz(startingpoint)+2*sum+forTrapz(endingpoint));
abs(area) 



