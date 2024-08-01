mulher(mona).
mulher(jackie).
mulher(marge).
mulher(patty).
mulher(selma).
mulher(lisa).
mulher(maggie).
mulher(ling).
homem(abraham).
homem(herb).
homem(clancy).
homem(homer).
homem(bart).
casal(abraham,mona).
casal(clancy,jackie).
casal(homer,marge).
casal(selma,maridoselma).
pai(abraham,herb).
pai(abraham,homer).
pai(homer,bart).
pai(homer,lisa).
pai(homer,maggie).
pai(clancy,marge).
pai(clancy,patty).
pai(clancy,selma).
mae(jackie,patty).
mae(jackie,marge).
mae(jackie,selma).
mae(mona,herb).
mae(mona,homer).
mae(marge,bart).
mae(marge,maggie).
mae(marge,lisa).
mae(selma,ling).
pais(X,Y) :- mae(X,Y).
pais(X,Y) :- pai(X,Y).
avos(X,Y) :- pais(X,Z), pais(Z,Y).
irmao(X,Y) :- mae(Z,X), mae(Z,Y), X \= Y.
irmao(X,Y) :- pai(Z,X), pai(Z,Y), X \= Y.
filho(X,Y) :- pais(Y,X).
neto(X,Y) :- avos(Y,X).
tioMae(X,Y) :- irmao(X,Z), mae(Z,Y).
tioPai(X,Y) :- irmao(X,Z), pai(Z,Y).
primoPai(X,Y) :- tioPai(Z,X), filho(Y,Z).
primoMae(X,Y) :- tioMae(Z,X), filho(Y,Z).




