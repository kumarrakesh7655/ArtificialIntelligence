gcd(A,B):-A1 is abs(A), B1 is abs(B), gcd(A1, B1, N1), print(N1).

gcd(0,B,N):- N is B.

gcd(A,0,N):- N is A.

gcd(A,B,N):-

    (   A = B

        ->  N is A

        ;   (   A > B

                ->  (   N1 is A-B,

                        gcd(N1,B, G),

                        N is G

                    )

                ;   (   N1 is B - A,

                        gcd(A, N1, G),

                        N is G

                    )

            )

    ).

