:- include(knowledgebase).
go :- hypothesize(Animal),
      write('I guess that the animal is '),
      write(Animal),
      nl,
      undo.

/* hypothesis to be tested */

hypothesize(cheetah)   :- cheetah, !.
hypothesize(tiger)     :- tiger, !.
hypothesize(echinada)  :- echinada, !.
hypothesize(giraffe)   :- giraffe, !.
hypothesize(zebra)     :- zebra, !.
hypothesize(ostrich)   :- ostrich, !.
hypothesize(penguin)   :- penguin, !.
hypothesize(albatross) :- albatross, !.
hypothesize(chameleon) :- chameleon, !.
hypothesize(turtle)	   :- turtle, !.
hypothesize(catfish)   :- catfish, !.
hypothesize(seahorse)  :- seahorse, !.
hypothesize(frog)	   :- frog, !.
hypothesize(salamander):- salamander, !.
hypothesize(unknown).             /* no diagnosis */


/* how to ask questions */
ask(Question) :-
    write('Does the animal have the following attribute: '),
    write(Question),
    write('?'),
    read(Response),
    nl,
    ((Response == yes ; Response == y ) 
	-> 
	asserta(yes(Question)) ; 
	asserta(no(Question)), fail).

:- dynamic(yes/1,no/1).

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ; 
     ask(S))).	 

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.