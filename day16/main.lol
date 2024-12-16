CAN HAS FILE?
CAN HAS STRING?

O HAI IM Mat
    I HAS A rows ITZ A NUMBR
    I HAS A cols ITZ A NUMBR

    HOW IZ I new
        O HAI IM result IM LIEK Mat
            I HAS A rows ITZ 0
            I HAS A cols ITZ 0
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I insert YR pos AN YR value
        ME HAS A SRS pos ITZ value
        ME'Z rows R BIGGR OF ME'Z rows AN SUM OF 1 AN pos'Z y
        ME'Z cols R BIGGR OF ME'Z cols AN SUM OF 1 AN pos'Z x
    IF U SAY SO

    HOW IZ I set YR pos AN YR value
        ME HAS A SRS pos ITZ value
    IF U SAY SO

    HOW IZ I get YR pos
        FOUND YR ME'Z SRS pos
    IF U SAY SO

    HOW IZ I find YR value
        IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN ME'Z rows
            IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN ME'Z cols
                I HAS A pos ITZ Pos IZ new YR x AN YR y MKAY
                I HAS A item ITZ ME IZ get YR pos MKAY
                BOTH SAEM value AN item, O RLY?, YA RLY, FOUND YR pos, OIC
            IM OUTTA YR col_loop
        IM OUTTA YR row_loop

        FOUND YR NOOB
    IF U SAY SO

    HOW IZ I clone
        I HAS A output ITZ Mat IZ new MKAY
        IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN ME'Z rows
            IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN ME'Z cols
                I HAS A pos ITZ Pos IZ new YR x AN YR y MKAY
                I HAS A value ITZ ME IZ get YR pos MKAY
                output IZ insert YR pos AN YR value MKAY
            IM OUTTA YR col_loop
        IM OUTTA YR row_loop
        FOUND YR output
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ ""
        IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN ME'Z rows
            IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN ME'Z cols
                I HAS A value ITZ ME IZ get YR Pos IZ new YR x AN YR y MKAY MKAY
                output R SMOOSH output AN value
            IM OUTTA YR col_loop
            output R SMOOSH output AN ":)"
        IM OUTTA YR row_loop
        FOUND YR output
    IF U SAY SO
KTHX

O HAI IM List
    I HAS A len ITZ A NUMBR

    HOW IZ I new
        O HAI IM result IM LIEK List
            I HAS A len ITZ 0
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I get YR index
        FOUND YR ME'Z SRS index
    IF U SAY SO

    HOW IZ I set YR index AN YR value
        ME HAS A SRS index ITZ value
    IF U SAY SO

    HOW IZ I push YR number
        ME HAS A SRS ME'Z len ITZ number
        ME'Z len R SUM OF ME'Z len AN 1
    IF U SAY SO

    HOW IZ I swap YR index1 AN YR index2
        I HAS A temp ITZ ME IZ get YR index1 MKAY
        ME IZ set YR index1 AN YR ME IZ get YR index2 MKAY MKAY
        ME IZ set YR index2 AN YR temp MKAY
    IF U SAY SO

    HOW IZ I insert YR at AN YR value
        ME IZ push YR value MKAY

        I HAS A index ITZ DIFF OF ME'Z len AN 1
        IM IN YR shift_loop NERFIN YR index TIL BOTH SAEM index AN at
            ME IZ swap YR index AN YR DIFF OF index AN 1 MKAY
        IM OUTTA YR shift_loop
    IF U SAY SO

    BTW binary search in a sorted list for that value
    HOW IZ I bin_search YR value
        I HAS A l ITZ 0
        I HAS A h ITZ ME'Z len

        IM IN YR loop TIL BOTH SAEM l AN BIGGR OF l AN h
            I HAS A mid ITZ QUOSHUNT OF SUM OF l AN h AN 2
            I HAS A item ITZ ME IZ get YR mid MKAY
            BOTH SAEM item AN value, O RLY?, YA RLY, FOUND YR mid, OIC
            BOTH SAEM item AN SMALLR OF item AN value, O RLY?
                YA RLY
                    l R mid
                NO WAI
                    h R mid
            OIC
        IM OUTTA YR loop

        FOUND YR l
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "["
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            output R SMOOSH output AN " " AN ME IZ get YR i MKAY
        IM OUTTA YR loop
        FOUND YR SMOOSH output AN " ]"
    IF U SAY SO
KTHX

O HAI IM Pos
    I HAS A x ITZ A NUMBR
    I HAS A y ITZ A NUMBR

    HOW IZ I new YR x AN YR y
        O HAI IM result IM LIEK Pos
            I HAS A x ITZ x
            I HAS A y ITZ y
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I add YR other
        I HAS A res_x ITZ SUM OF ME'Z x AN other'Z x
        I HAS A res_y ITZ SUM OF ME'Z y AN other'Z y
        FOUND YR Pos IZ new YR res_x AN YR res_y MKAY
    IF U SAY SO

    HOW IZ I mult YR t
        I HAS A res_x ITZ PRODUKT OF ME'Z x AN t
        I HAS A res_y ITZ PRODUKT OF ME'Z y AN t
        FOUND YR Pos IZ new YR res_x AN YR res_y MKAY
    IF U SAY SO

    HOW IZ I to_string
        FOUND YR SMOOSH ME'Z x AN "x" AN ME'Z y
    IF U SAY SO
KTHX

HOW IZ I read_input YR path
    I HAS A file ITZ FILE IZ OPEN YR path MKAY
    NOT file, O RLY?, YA RLY
        INVISIBLE SMOOSH "no file `" AN path AN "` ::("
        FOUND YR NOOB
    OIC
    I HAS A content ITZ FILE IZ GETZ YR file MKAY

    I HAS A grid ITZ Mat IZ new MKAY

    BTW parse the grid
    IM IN YR row_loop UPPIN YR row TIL EITHER OF BOTH SAEM 0 AN STRING IZ LEN YR content MKAY BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
        IM IN YR col_loop UPPIN YR col TIL BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
            I HAS A pos ITZ Pos IZ new YR col AN YR row MKAY
            I HAS A char ITZ STRING IZ AT YR content AN YR 0 MKAY
            grid IZ insert YR pos AN YR char MKAY
            content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
        IM OUTTA YR col_loop
        content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
    IM OUTTA YR row_loop

    FOUND YR grid
IF U SAY SO

I HAS A DIRS ITZ List IZ new MKAY
DIRS IZ push YR Pos IZ new YR -1 AN YR  0 MKAY MKAY
DIRS IZ push YR Pos IZ new YR  0 AN YR  1 MKAY MKAY
DIRS IZ push YR Pos IZ new YR  1 AN YR  0 MKAY MKAY
DIRS IZ push YR Pos IZ new YR  0 AN YR -1 MKAY MKAY


HOW IZ I find_lowest_path YR from AN YR to AN YR grid


IF U SAY SO

HOW IZ I part1 YR input
    I HAS A start ITZ input IZ find YR "S" MKAY
    I HAS A end ITZ input IZ find YR "E" MKAY

    
IF U SAY SO

HOW IZ I main
    I HAS A input ITZ I IZ read_input YR "input" MKAY
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
