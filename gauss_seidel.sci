// Turn off function redefinition checking
funcprot(0);

function [x, iter] = gauss_seidel(A, b, x0, tol, max_iter)
    // Get the size of the matrix A
    n = size(A, 1);
    
    // Initialize iteration
    x = x0;
    iter = 0;
    err = tol + 1;
    
    // Iterate until convergence or max iterations
    while err > tol && iter < max_iter
        x_old = x;
        for i = 1:n
            sum_val = 0;
            for j = 1:n
                if j ~= i
                    sum_val = sum_val + A(i, j) * x(j);
                end
            end
            x(i) = (b(i) - sum_val) / A(i, i);
        end
        err = norm(x - x_old, 'inf') / norm(x, 'inf');
        iter = iter + 1;
    end
end

// Example usage:
A = [7, 2, -1; -1, 9, 2; 1, 5, -11];
b = [17.20; 18.90; 28.05];
x0 = [0; 0; 0]; // Initial guess
tol = 1e-4; // Tolerance
max_iter = 1000; // Maximum iterations

[x, iter] = gauss_seidel(A, b, x0, tol, max_iter);
disp('Solution:');
disp(x);
disp(['Number of iterations: ', string(iter)]);
