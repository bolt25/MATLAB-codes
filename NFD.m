clc;
clear all;
disp('Enter equispaced values of X only');
disp('---------------------------------');
order=input('Enter the order of equation: ');
number=order+1;
disp('---------------------------------');
for i=1:number
    x(i)=input('Enter x: ');
    y(i)=input('Enter y: ');
end
x=reshape(x,number,1);
y=reshape(y,number,1);
disp('---------------------------------');
matrix=zeros(number,number+1);
matrix(:,1:2)=[x,y];
x_input=input('Enter the x value which you want to calculate: ');
disp('---------------------------------');
p=(x_input-x(1))/(x(2)-x(1));
for j=3:number+1   % here column controlled loop is outer loop rather than row controlled loop
    for i=1:number
        if(i < length(matrix(:,1))-(j-3))  %every subsequent column has one element less then previous row rest all entries are zero for that row
            matrix(i,j)= (matrix(i+1,j-1)-matrix(i,j-1));   
        end
    end
end
coeff=matrix(1,2:end);
p_matrix=ones(order+1,1);
for i=2:length(x)
    for j=1:(i-1)
        p_matrix(i)=(p_matrix(i-1)*(p-(i-2)))/j;   %j here accounts for the factorial term
    end
end
answer=coeff*p_matrix;
disp(answer);