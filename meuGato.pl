passaro(tweety).
peixe(goldie).
minhoca(molie).
gato(gatogenerico).
gato(silvester).
meugato(silvester).
amigo(eu,silvester).
gosta(X,Y) :- passaro(X),minhoca(Y).
gosta(X,Y) :- gato(X),peixe(Y).
gosta(X,Y) :- gato(X),passaro(Y).
gosta(X,Y) :- amigo(X,Y).
gosta(X,Y) :- amigo(Y,X).
come(X,Y) :- gosta(X,Y), meugato(X).