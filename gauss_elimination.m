clear all;
clc;
number=input('number of equations: ');
disp('--------------------------------------');
for i=1:number
    for j=1:number
        A(i,j)=input('Enter  coeff: ');
    end
end
A=reshape(A,number,number);
disp('--------------------------------------');
for k=1:number
    constants(k)=input('Enter the constants of the equation present on the RHS: ');
end
constants=reshape(constants,number,1);
C=[A,constants];

for rows=1:number-1                                %selects the row for iteration
    for cols=1:number-rows                         %decides how many times a loop needs to be executed. Eg- if a matrix is 3x3 when 1st row is selected the loops needs to run for 2 times and when row 2 is selected loop needs to run for 1 time.
        alpha = C(rows+cols,rows)/C(rows,rows);
        C(rows+cols,:)=C(rows+cols,:)-alpha*C(rows,:);
    end
end
disp(C);
X=zeros(number,1);
for range=number:-1:1
    X(range)=(C(range,end)-C(range,range+1:number)*X(range+1:number))/C(range,range);
end
disp(X);

