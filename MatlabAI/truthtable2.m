clear all; close all;

A = [1 1 0 0];
B = [1 0 1 0];

% Calculate logical operations
not_A = ~A;
not_B = ~B;
and_AB = A & B;
or_AB = A | B;

% Preallocate the Equi vector for speed
Equi = zeros(1, length(A));

% Determine equivalence of A and B
for n = 1:length(A)
    if A(n) == B(n)
        Equi(n) = 1;
    else
        Equi(n) = 0;
    end
end

% Compute implication A -> B and B -> A
impli_AB = or(not_A, B);
impli_BA = or(not_B, A);

Logics = [A' B' not_A' not_B' and_AB' or_AB'];
Logics_f = [A' B' not_A' not_B' impli_BA' impli_AB' Equi'];

disp('Logics:');
disp(Logics);

disp('Logics_f:');
disp(Logics_f);
