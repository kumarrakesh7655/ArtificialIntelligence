max(X,Y,M):-

    (

        X>Y,

        M is X

    ).

max(X,Y,M):-

    (

        Y>X,

        M is Y

    ).

max(X,Y):-

    (

        X>Y

    -> print(X) 

    ;  print(Y)

    ).