clear all;
clc;

number=input('number of equations: ');
disp('--------------------------------------');
for i=1:number
    for j=1:number
        U(i,j)=input(sprintf('Enter (%d,%d) coeff: ' ,i,j));
        
    end
end
A=U;
U=reshape(U,number,number);
disp('--------------------------------------');
for k=1:number
    B(k)=input('Enter the constants of the equation present on the RHS: ');
end
B=reshape(B,number,1);


for rows=1:number-1
    for cols=1:number-rows
        alpha = U(rows+cols,rows)/U(rows,rows);
        U(rows+cols,:)=U(rows+cols,:)-alpha*U(rows,:);
    end
end

L=A/U;
Y=L\B;   %A\B gives INV(A)*B and A/B gives A*INV(B)
X=U\Y;
disp(X);


