clc;
clear all;
order=input('Enter the order of equation: ');
disp('------------------------------------');
number=order+1;
for i=1:number
    x(i)=input('Enter x: ');
    y(i)=input('Enter y: ');
end
x=reshape(x,number,1);
y=reshape(y,number,1);
matrix=zeros(number,number+1);
matrix(:,1:2)=[x,y];
for j=3:number+1   % here column controlled loop is outer loop rather than row controlled loop
    for i=1:number
        if(i < length(matrix(:,1)) - (j-3))  %every subsequent column has one element less then previous row rest all entries are zero for that row
            matrix(i,j)= (matrix(i+1,j-1)-matrix(i,j-1))/(matrix(i+j-2,1)-matrix(i,1));   
        end
      
    end
end
coeff=matrix(1,2:end);
disp('---------------------------------');
x_input=input('Enter the x value: ');
disp('---------------------------------');
x_matrix=ones(order+1,1);
for i=2:length(x)
    x_matrix(i)=(x_matrix(i-1)*(x_input-x(i-1)));
end
answer=coeff*x_matrix;
disp(answer);