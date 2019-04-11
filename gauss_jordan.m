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

for rows=1:number-1
    for cols=1:number-rows
        alpha = C(rows+cols,rows)/C(rows,rows);
        C(rows+cols,:)=C(rows+cols,:)-alpha*C(rows,:);
    end
end

for rows=number:-1:1
    for cols=rows-1:-1:1
        alpha = C(cols,rows)/C(rows,rows);
        C(cols,:)=C(cols,:)-alpha*C(rows,:);
    end
end

disp(C);
X=zeros(number,1);
for range=number:-1:1
    X(range)=C(range,end)/C(range,range);
end
disp(X);

