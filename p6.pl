power(N, P):- power(N, P, A), print(A),!.

power(1, _, 1).

power(0, _, 0).

power(_, 0, 1).

power(N, P, A):- 

(   

    P > 0

    ->  (

            P1 is P - 1,

            power(N, P1, A1),

            A is N*A1

        )

    ;   (

            P1 is P + 1,

            power(N, P1, A1),

            A is 1/N*A1

        )

        

).