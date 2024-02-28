//modulo(10,3)=>10/3
//sqrt(2)
//nthroot(27,3) => cube root of 27.
//nthroot(16,4)=> quadratic root of 16.
//factorial(5)
//9.33D+13 => 9.33*10^13
//exp
//%pi=3.1415927
//%i=0. + i
//sin(%pi/2)=> sin(pi/2) //sin in radian
//cos(%pi/2)
//tan(%pi/4)
//csc(%pi/4)=>cosec
//sec()
//cotg()//cot thetha
//sind(90)=> sin in degree
//asin() //sin inverse
//acos()
//Initialization of array and matrices.
//x=[1,2,3,4] // array ban gya .
//x=['new delhi' , 'washington','paris']
//x=[1:10] //give an array of 1 to 10
//x=[1:2:9] //step size of 2 => 1 3 5 7 9
//a=[1,2;3,4]
//b=[1,5;6,2]
//operations on matrix builtin=> a+b a-b a*b 
//elementwise operation of a and b wrt to their position => a.*b
//sum(a)=> sum of all the element.
//mean(a)=> average .
//max(a)=> maixum element of matrix a.
//a'=> a transpose.
//inverse of a matrix =>inv(a)
//det(a)=> determinant of a.
//diag(a)=> diagonal matrix of a.
//a(2,1)=> give 2,1 element of the matrix.
//solving system of linear equation.
//string(Z)=>conversion to string.
//plot(x,y,'o') plotting in scilab.
//
disp("Helllo World")
age=34
h=5
if age>=18 & h>=6   then
    disp('You are eligible')
else age<18
    disp("you are not eligble to driver")
end
//while loop
i=2 
while i<10
    disp(i)
    i=i+1
end

//For loop.
for i=1:10
    disp(i)
end
//Functions. //x is the argument to the function . y is the output of the function f is the name of the function.
//derivative => numderivative(f,2)=> differentiate f at point 2.
//integrate => intg(0,2,f)=> integrate function f in the range of(0,2)
//legend([String])
//xgrid(1,1,1)
//xtitle('title','xaxis','yaxix')
//subplots
//plot3d(x,y,z)

function [y]=fname(x)
    y=x^2
endfunction

//Quadratic function.
function [p,q]= quadratic(a,b,c)
    p=(-b+sqrt(b*b-4*a*c))/(2*a)
    q=(-b-sqrt(b*b-4*a*c))/(2*a)
endfunction





