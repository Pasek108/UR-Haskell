{-------------------------------------------------------------------------------

2.1 Determine the values of the following expressions

    2^100
    (12 + 23)(40 - 21)
    quotient of the first expression by the second one
    square root of 2
    square root of (12 + 23)(40 - 21)
    2+ -3
    2+(-3)

-------------------------------------------------------------------------------}

{-

ghci> 2^100
1267650600228229401496703205376

ghci> (12 + 23) * (40 - 21)
665

ghci> 2^100 / ((12 + 23) * (40 - 21))
1.9062415041026007e27

ghci> sqrt 2
1.4142135623730951

ghci> sqrt ((12 + 23) * (40 - 21))
25.787593916455254

ghci> 2 + -3

<interactive>:1:1: error:
    Precedence parsing error
        cannot mix `+' [infixl 6] and prefix `-' [infixl 6] in the same infix 
        expression

ghci> 2 + (-3)
-1

-}
