count([],0).
count([H|Tail], N) :-
    count(Tail, N1),
    (  number(H)
    -> N is N1 + 1
    ;  N = N1
    ).
list_sum([],0).

list_sum([Head|Tail], TotalSum):-
flatten(Head, Headf),
flatten(Tail, Tailf),
list_sum(Tailf, Sum1),
TotalSum is Headf+Sum1.
