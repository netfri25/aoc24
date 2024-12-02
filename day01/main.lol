
CAN HAS FILE?
CAN HAS STRING?

O HAI IM List
    I HAS A len ITZ A NUMBR

    HOW IZ I push YR number
        ME HAS A SRS ME'Z len ITZ number
        ME'Z len R SUM OF ME'Z len AN 1
    IF U SAY SO

    HOW IZ I get YR index
        FOUND YR ME'Z SRS index
    IF U SAY SO

    HOW IZ I set YR index AN YR value
        ME HAS A SRS index ITZ value
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "["
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            output R SMOOSH output AN " " AN ME IZ get YR i MKAY
        IM OUTTA YR loop
        FOUND YR SMOOSH output AN " ]"
    IF U SAY SO

    HOW IZ I swap YR index1 AN YR index2
        I HAS A temp ITZ ME IZ get YR index1 MKAY
        ME IZ set YR index1 AN YR ME IZ get YR index2 MKAY MKAY
        ME IZ set YR index2 AN YR temp MKAY
    IF U SAY SO

    BTW ICantBelieveItCanSort: https://arxiv.org/pdf/2110.01111
    HOW IZ I sort
        IM IN YR i_loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            IM IN YR j_loop UPPIN YR j TIL BOTH SAEM j AN ME'Z len
                DIFFRINT ME IZ get YR i MKAY AN BIGGR OF ME IZ get YR i MKAY AN ME IZ get YR j MKAY
                O RLY?, YA RLY, ME IZ swap YR i AN YR j MKAY, OIC
            IM OUTTA YR j_loop
        IM OUTTA YR i_loop
    IF U SAY SO

    HOW IZ I count YR value
        I HAS A total ITZ 0
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            BOTH SAEM value AN ME IZ get YR i MKAY, O RLY?, YA RLY
                total R SUM OF total AN 1
            OIC
        IM OUTTA YR loop
        FOUND YR total
    IF U SAY SO
KTHX

HOW IZ I read_input
    I HAS A path ITZ "input"
    I HAS A file ITZ FILE IZ OPEN YR path MKAY
    NOT file, O RLY?, YA RLY
        INVISIBLE SMOOSH "no file `" AN path AN "` ::("
        FOUND YR NOOB
    OIC

    I HAS A input ITZ FILE IZ GETZ YR file MKAY
    O HAI IM left_list IM LIEK List, I HAS A len ITZ 0, KTHX
    O HAI IM right_list IM LIEK List, I HAS A len ITZ 0, KTHX

    IM IN YR line_loop TIL BOTH SAEM 0 AN STRING IZ LEN YR input MKAY
        I HAS A left_number ITZ STRING IZ SLICE YR input AN YR 0 AN YR 5 MKAY
        left_number IZ NOW A NUMBR
        left_list IZ push YR left_number MKAY

        BTW skip the first number + the spaces
        input R STRING IZ SLICE YR input AN YR 8 AN YR STRING IZ LEN YR input MKAY

        I HAS A right_number ITZ STRING IZ SLICE YR input AN YR 0 AN YR 5 MKAY
        right_number IZ NOW A NUMBR
        right_list IZ push YR right_number MKAY

        BTW skip the second number + newline
        input R STRING IZ SLICE YR input AN YR 6 AN YR STRING IZ LEN YR input MKAY
    IM OUTTA YR line_loop

    O HAI IM result
        I HAS A left_list ITZ left_list
        I HAS A right_list ITZ right_list
    KTHX

    FOUND YR result
IF U SAY SO

HOW IZ I abs YR value
    DIFFRINT 0 AN SMALLR OF 0 AN value, O RLY?
        YA RLY
            FOUND YR DIFF OF 0 AN value
        NO WAI
            FOUND YR value
    OIC
IF U SAY SO

HOW IZ I part1 YR left_list AN YR right_list
    left_list IZ sort MKAY
    right_list IZ sort MKAY

    I HAS A total ITZ 0
    IM IN YR list_loop UPPIN YR i TIL BOTH SAEM i AN left_list'Z len
        I HAS A diff ITZ I IZ abs YR DIFF OF left_list IZ get YR i MKAY AN right_list IZ get YR i MKAY MKAY
        total R SUM OF total AN diff
    IM OUTTA YR list_loop

    FOUND YR total
IF U SAY SO

HOW IZ I part2 YR left_list AN YR right_list
    I HAS A total ITZ 0
    IM IN YR loop UPPIN YR i TIL BOTH SAEM left_list'Z len AN i
        I HAS A value ITZ left_list IZ get YR i MKAY
        total R SUM OF total AN PRODUKT OF value AN right_list IZ count YR value MKAY
    IM OUTTA YR loop
    FOUND YR total
IF U SAY SO

HOW IZ I main
    I HAS A input ITZ I IZ read_input MKAY
    I HAS A left_list ITZ input'Z left_list
    I HAS A right_list ITZ input'Z right_list

    I HAS A sol
    sol R I IZ part1 YR left_list AN YR right_list MKAY
    VISIBLE SMOOSH "part 1:: " AN sol
    sol R I IZ part2 YR left_list AN YR right_list MKAY
    VISIBLE SMOOSH "part 2:: " AN sol
IF U SAY SO

I IZ main MKAY
