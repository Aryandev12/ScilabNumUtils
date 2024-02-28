function [f] = myFunction(x)
    f = 10*x*exp(-x*x)-1;
endfunction

function [z] = derivativeOfF(x)
    z = 10*exp(-(x*x)) -20*(x*x)*exp(-(x*x));
endfunction

a = 1;
b = 2;
initial_guess = (a + b) / 2;

i = 1;
max_iterations = 30;
tolerance = 0.000001;

while (i <= max_iterations)
    f = myFunction(initial_guess);
    f1 = derivativeOfF(initial_guess); 
    new_guess = initial_guess - (f / f1);
    
   
    if abs(new_guess - initial_guess) < tolerance
        break;
    end
    
    initial_guess = new_guess;
    i = i + 1;
    disp(new_guess);
end

disp('Final root estimate:');
disp(new_guess);
