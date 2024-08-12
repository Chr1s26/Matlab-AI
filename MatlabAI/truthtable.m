% Define logical variables P and Q
P = [true, true, false, false];
Q = [true, false, true, false];

% (a) Negation
NOT_P = ~P;

% (b) Conjunction
AND_PQ = P & Q;

% (c) Disjunction
OR_PQ = P | Q;

% (d) Implication
IMPLIES_PQ = ~P | Q;

% (e) Equivalence
EQUIV_PQ = (P == Q);

% (f) Contraposition
CONTRAPOSITION = ~Q | ~P;

% (g) De Morgan's Laws
DEMORGAN1 = ~(P & Q) == (~P | ~Q);
DEMORGAN2 = ~(P | Q) == (~P & ~Q);

% (h) Distributive Laws
R = [true, true, false, false]; % Add a third variable R
DISTRIBUTIVE1 = P & (Q | R) == (P & Q) | (P & R);
DISTRIBUTIVE2 = P | (Q & R) == (P | Q) & (P | R);

% (i) Tautology and Contradiction
TAUTOLOGY = P | ~P;
CONTRADICTION = P & ~P;

% Display results
fprintf('P \t Q \t ~P \t P&Q \t P|Q \t P->Q \t P<->Q \t ~Q->~P \t ~(P&Q)<->~Pv~Q \t ~(P|Q)<->~P&~Q\n');
for i = 1:length(P)
    fprintf('%d \t %d \t %d \t %d \t %d \t %d \t %d \t %d \t %d \t %d\n', ...
        P(i), Q(i), NOT_P(i), AND_PQ(i), OR_PQ(i), IMPLIES_PQ(i), EQUIV_PQ(i), CONTRAPOSITION(i), DEMORGAN1(i), DEMORGAN2(i));
end

fprintf('\nP \t Q \t R \t P&(Q|R)<->(P&Q)|(P&R) \t P|(Q&R)<->(P|Q)&(P|R)\n');
for i = 1:length(P)
    fprintf('%d \t %d \t %d \t %d \t %d\n', ...
        P(i), Q(i), R(i), DISTRIBUTIVE1(i), DISTRIBUTIVE2(i));
end

fprintf('\nP \t P|~P (Tautology) \t P&~P (Contradiction)\n');
for i = 1:length(P)
    fprintf('%d \t %d \t %d\n', P(i), TAUTOLOGY(i), CONTRADICTION(i));
end

%fprintf('P \t Q \t ~P \t P&Q \t P|Q \t P->Q \t P<->Q \t ~Q->~P \t ~(P&Q)<->~Pv~Q \t ~(P|Q)<->~P&~Q\n');
%for i = 1:length(P)
    %fprintf('%s \t %s \t %s \t %s \t %s \t %s \t %s \t %s \t %s \t %s\n', ...
    %    logicalToString(P(i)), logicalToString(Q(i)), logicalToString(NOT_P(i)), logicalToString(AND_PQ(i)), ...
     %   logicalToString(OR_PQ(i)), logicalToString(IMPLIES_PQ(i)), logicalToString(EQUIV_PQ(i)), ...
     %   logicalToString(CONTRAPOSITION(i)), logicalToString(DEMORGAN1(i)), logicalToString(DEMORGAN2(i)));
%end
