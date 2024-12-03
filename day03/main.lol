CAN HAS FILE?
CAN HAS STRING?

HOW IZ I read_input
    I HAS A path ITZ "input"
    I HAS A file ITZ FILE IZ OPEN YR path MKAY
    NOT file, O RLY?, YA RLY
        INVISIBLE SMOOSH "no file `" AN path AN "` ::("
        FOUND YR NOOB
    OIC

    FOUND YR FILE IZ GETZ YR file MKAY
IF U SAY SO

HOW IZ I index_of YR str AN YR char
    I HAS A index ITZ 0
    IM IN YR loop UPPIN YR index TIL EITHER OF  BOTH SAEM index AN STRING IZ LEN YR str MKAY  AN  BOTH SAEM char AN STRING IZ AT YR str AN YR index MKAY
    IM OUTTA YR loop
    FOUND YR index
IF U SAY SO

HOW IZ I starts_with YR str AN YR prefix
    DIFFRINT STRING IZ LEN YR str MKAY AN BIGGR OF STRING IZ LEN YR str MKAY AN STRING IZ LEN YR prefix MKAY, O RLY?, YA RLY
        FOUND YR FAIL
    OIC

    IM IN YR loop UPPIN YR index TIL BOTH SAEM index AN STRING IZ LEN YR prefix MKAY
        DIFFRINT STRING IZ AT YR str AN YR index MKAY AN STRING IZ AT YR prefix AN YR index MKAY, O RLY?, YA RLY
            FOUND YR FAIL
        OIC
    IM OUTTA YR loop

    FOUND YR WIN
IF U SAY SO

HOW IZ I take YR str AN YR amount
    FOUND YR STRING IZ SLICE YR str AN YR 0 AN YR amount MKAY
IF U SAY SO

HOW IZ I drop YR str AN YR amount
    FOUND YR STRING IZ SLICE YR str AN YR amount AN YR STRING IZ LEN YR str MKAY MKAY
IF U SAY SO

HOW IZ I is_digit YR char
    BOTH OF BOTH SAEM char AN BIGGR OF char AN "0" AN BOTH SAEM char AN SMALLR OF char AN "9"
IF U SAY SO

HOW IZ I is_number YR str
    I HAS A index ITZ 0
    IM IN YR loop UPPIN YR index TIL BOTH SAEM index AN STRING IZ LEN YR str MKAY
        NOT I IZ is_digit YR STRING IZ AT YR str AN YR index MKAY MKAY, O RLY?, YA RLY
            FOUND YR FAIL
        OIC
    IM OUTTA YR loop
    FOUND YR DIFFRINT 0 AN index
IF U SAY SO

HOW IZ I solve YR input AN YR should_mul
    I HAS A total ITZ 0
    I HAS A mul ITZ 1

    IM IN YR loop TIL BOTH SAEM 0 AN STRING IZ LEN YR input MKAY
        I IZ starts_with YR input AN YR "do()" MKAY, O RLY?
            YA RLY
                mul R 1
            MEBBE I IZ starts_with YR input AN YR "don't()" MKAY
                mul R 0
            MEBBE I IZ starts_with YR input AN YR "mul(" MKAY
                input R I IZ drop YR input AN YR 4 MKAY
                I HAS A comma_index ITZ I IZ index_of YR input AN YR "," MKAY

                I HAS A lhs_str ITZ I IZ take YR input AN YR comma_index MKAY
                I IZ is_number YR lhs_str MKAY, O RLY?, YA RLY
                    I HAS A lhs ITZ MAEK lhs_str A NUMBR
                    input R I IZ drop YR input AN YR SUM OF comma_index AN 1 MKAY

                    I HAS A paren_index ITZ I IZ index_of YR input AN YR ")" MKAY
                    I HAS A rhs_str ITZ I IZ take YR input AN YR paren_index MKAY
                    I IZ is_number YR rhs_str MKAY, O RLY?, YA RLY
                        I HAS A rhs ITZ MAEK rhs_str A NUMBR
                        input R I IZ drop YR input AN YR paren_index MKAY

                        should_mul, O RLY?
                            YA RLY
                                total R SUM OF total AN PRODUKT OF mul AN PRODUKT OF lhs AN rhs
                            NO WAI
                                total R SUM OF total AN PRODUKT OF lhs AN rhs
                        OIC
                    OIC
                OIC
        OIC

        input R I IZ drop YR input AN YR 1 MKAY
    IM OUTTA YR loop

    FOUND YR total
IF U SAY SO

HOW IZ I part1 YR input
    FOUND YR I IZ solve YR input AN YR FAIL MKAY
IF U SAY SO

HOW IZ I part2 YR input
    FOUND YR I IZ solve YR input AN YR WIN MKAY
IF U SAY SO

HOW IZ I main
    I HAS A input ITZ I IZ read_input MKAY
    NOT input, O RLY?, YA RLY
        FOUND YR NOOB
    OIC

    I HAS A sol
    sol R I IZ part1 YR input MKAY
    VISIBLE SMOOSH "part 1:: " AN sol
    sol R I IZ part2 YR input MKAY
    VISIBLE SMOOSH "part 2:: " AN sol
IF U SAY SO

I IZ main MKAY
