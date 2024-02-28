clear
a=[2.1756 4.0231 -2.1732 5.1967; -4.0231 6.000 0.000 1.1973;-1.0000 -5.2107 1.1111 0;6.0235 7 0 -4.1561]
a1=a
b=[17.102; -6.1593; 3.0004; 0]
b1=b
disp([a b])
[row,col] =size(a)
disp("The rows and columns are-",row,col)

disp(a)
for i=1:row
    m=a(i,i)
    a(i,:)=a(i,:)/m
    b(i)=b(i)/m
    for j=i+1:row
        m2=a(j,i)
        a(j,:)=a(j,:)-m2*(a(i,:))
        b(j)=b(j)-m2*b(i)
   end
   disp("The matrix after",i,"steps",[a b])
    
    
end
x(row)=b(row)/a(row,row)
for i=row:-1:1
    sum=0
    for j=i+1:row
        sum=sum+a(i,j)*x(j)
        x(i)=(b(i)-sum)/a(i,i)
    end
    
end
disp("The result matrix is ",x)

