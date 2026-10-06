% Sudoku Solver
% 
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

1 { sudoku(X,Y,G) : G=1..4 } 1 :- X=1..4, Y=1..4.

subgrid(X,Y,G) :- X=1..4, Y=1..4, G=1+(((X-1)/2)*2+(Y-1)/2).

:- initial(X,Y,G), not sudoku(X,Y,G).

:- sudoku(X,Y1,G), sudoku(X,Y2,G), Y1 < Y2.
:- sudoku(X1,Y,G), sudoku(X2,Y,G), X1 < X2.
:- sudoku(X1,Y1,G), sudoku(X2,Y2,G),
   subgrid(X1,Y1,G), subgrid(X2,Y2,G), X1 < X2.

#show sudoku/3.
