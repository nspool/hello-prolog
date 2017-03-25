
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

man(mahtan).
man(finwe).
man(feanor).
man(maedhros).
man(maglor).
man(celegorm).
man(caranthir).
man(curufin).
man(amrod).
man(amras).
man(celebrimbor).

woman(miriel).
woman(nerdanel).

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

father(X,Y) :- parent(X,Y), man(X).
mother(X,Y) :- parent(X,Y), woman(X).

ancestor(A, B) :- parent(A, B).
ancestor(A, B) :- parent(A, X), ancestor(X, B).
