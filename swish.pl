% Hechos sobre relaciones familiares
padre(juan, maria).
padre(juan, jose).
padre(carlos, ana).
madre(laura, maria).
madre(laura, jose).
madre(maria, pedro).
madre(maria, lucia).
madre(ana, sofia).
madre(ana, luis).

% Regla para determinar si dos personas son hermanos/hermanas
hermano_hermana(X, Y) :-
    padre(P, X), padre(P, Y),
    madre(M, X), madre(M, Y),
    X \= Y.

% Regla para determinar si una persona es abuelo o abuela de otra persona
abuelo_abuela(A, N) :-
    (padre(A, P); madre(A, P)),
    (padre(P, N); madre(P, N)).
