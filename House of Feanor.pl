
% The House of Fëanor
% Example query. Comma denotes the logical AND
% Goal: Find elves that have Feanor as parent and have children:
% father(feanor,X),parent(X,Y)

% Database

elf(mahtan).
elf(finwe).
elf(feanor).
elf(maedhros).
elf(maglor).
elf(celegorm).
elf(caranthir).
elf(curufin).
elf(amrod).
elf(amras).
elf(celebrimbor).
elf(miriel).
elf(nerdanel).

male(mahtan).
male(finwe).
male(feanor).
male(maedhros).
male(maglor).
male(celegorm).
male(caranthir).
male(curufin).
male(amrod).
male(amras).
male(celebrimbor).

female(miriel).
female(nerdanel).

parent(mahtan, miriel).

parent(finwe, feanor).
parent(miriel, feanor).

parent(feanor, maedhros).
parent(nerdanel, maedhros).
parent(feanor, maglor).
parent(nerdanel, maglor).
parent(feanor, celegorm).
parent(nerdanel, celegorm).
parent(feanor, caranthir).
parent(nerdanel, caranthir).
parent(feanor, curufin).
parent(nerdanel, curufin).
parent(feanor, amrod).
parent(nerdanel, amrod).
parent(feanor, amras).
parent(nerdanel, amras).

parent(curufin, celebrimbor).


father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).

ancestor(A, B) :- parent(A, B).
ancestor(A, B) :- parent(A, X), ancestor(X, B).
