clear all;
clc;

order=input('Enter the order of the equation: ');
number=input('Enter the number of datapoints: ');
for i=1:number
    x(i)=input('Enter X: ');
    y(i)=input('Enter Y: ');
end
x=reshape(x,number,1);
y=reshape(y,number,1);

for i=1:(order+1)
    for j=1:(order+1)
        x_sum(i,j)= sum(x.^(i+j-2));
        y_sum(i)=sum(x.^(i-1).*y);
    end
end
y_sum=reshape(y_sum,length(y_sum),1);
weights=(x_sum)\y_sum;
disp(weights) 