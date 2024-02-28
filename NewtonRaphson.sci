function [f] = myFunction(x)
    f = (1 / (x + 1)) + (1 / (x + 2)) - 2 * exp(-x);
endfunction

function [z] = derivativeOfF(x)
    z = -(1 / ((x + 1) * (x + 1))) - (1 / ((x + 2) * (x + 2))) + 2 * exp(-x);
endfunction

a = 1;
b = 2;
initial_guess = (a + b) / 2;

i = 1;
max_iterations = 15;
tolerance = 0.0001;

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


    


