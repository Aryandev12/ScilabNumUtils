A = [7, 2, -1; -1, 9, 2; 1, 5, -11];
b = [17.20; 18.90; 28.05];
n = size(A, 1);
is_diagonally_dominant = 1;

for i = 1:n
    row_sum = sum(abs(A(i, :))) - abs(A(i, i));
    if abs(A(i, i)) <= row_sum
        is_diagonally_dominant = 0;
        break;
    end
end

disp(['Is A diagonally dominant? ', string(is_diagonally_dominant)]);
