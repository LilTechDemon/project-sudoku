% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
1 { sudoku(X,Y,V) : V=1..4 } 1 :- X=1..4, Y=1..4.

:- initial(X,Y,V), not sudoku(X,Y,V).

:- sudoku(X,Y1,V), sudoku(X,Y2,V), Y1 < Y2.
:- sudoku(X1,Y,V), sudoku(X2,Y,V), X1 < X2.

#show sudoku/3.
