CAN HAS FILE?
CAN HAS STRING?

O HAI IM Mat
    I HAS A size ITZ A NUMBR

    HOW IZ I new
        O HAI IM result IM LIEK Mat
            I HAS A size ITZ 0
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I new_with_size YR size AN YR default
        I HAS A result ITZ Mat IZ new MKAY
        IM IN YR row_loop UPPIN YR row_index TIL BOTH SAEM row_index AN size
            IM IN YR col_loop UPPIN YR col_index TIL BOTH SAEM col_index AN size
                I HAS A pos ITZ Pos IZ new YR col_index AN YR row_index MKAY
                result IZ set YR pos AN YR default MKAY
            IM OUTTA YR col_loop
        IM OUTTA YR row_loop

        FOUND YR result
    IF U SAY SO

    HOW IZ I set YR pos AN YR value
        I HAS A pos_str ITZ pos IZ to_string MKAY
        BOTH SAEM NOOB AN ME IZ get YR pos MKAY, O RLY?
            YA RLY
                ME HAS A SRS pos_str ITZ value
            NO WAI
                ME'Z SRS pos_str R value
        OIC
        ME'Z size R BIGGR OF ME'Z size AN SUM OF 1 AN BIGGR OF pos'Z x AN pos'Z y
    IF U SAY SO

    HOW IZ I get YR pos
        I HAS A pos_str ITZ MAEK pos A YARN
        FOUND YR ME'Z SRS pos_str
    IF U SAY SO

    HOW IZ I in_range YR i
        FOUND YR BOTH OF  BOTH SAEM i AN BIGGR OF i AN 0  AN  DIFFRINT i AN BIGGR OF i AN ME'Z size
    IF U SAY SO

    HOW IZ I in_bounds YR pos
        FOUND YR BOTH OF ME IZ in_range YR pos'Z x MKAY  AN  ME IZ in_range YR pos'Z y MKAY
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ ""
        IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN ME'Z size
            IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN ME'Z size
                I HAS A value ITZ ME IZ get YR Pos IZ new YR x AN YR y MKAY MKAY
                output R SMOOSH output AN value
            IM OUTTA YR col_loop
            output R SMOOSH output AN ":)"
        IM OUTTA YR row_loop
        FOUND YR output
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

    I HAS A output ITZ Mat IZ new MKAY

    IM IN YR row_loop UPPIN YR row TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        IM IN YR col_loop UPPIN YR col TIL BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
            I HAS A char ITZ STRING IZ AT YR content AN YR 0 MKAY
            I HAS A value ITZ MAEK char A NUMBR
            I HAS A pos ITZ Pos IZ new YR col AN YR row MKAY
            output IZ set YR pos AN YR value MKAY
            content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
        IM OUTTA YR col_loop
        content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
    IM OUTTA YR row_loop

    FOUND YR output
IF U SAY SO

HOW IZ I count_trailheads YR input AN YR pos AN YR visited AN YR distinct
    I HAS A count ITZ 0
    BOTH SAEM 9 AN input IZ get YR pos MKAY, O RLY?, YA RLY
        count R 1
    OIC

    DIFFRINT NOOB AN visited IZ get YR pos MKAY, O RLY?, YA RLY
        distinct, O RLY?
            YA RLY
                FOUND YR visited IZ get YR pos MKAY
            NO WAI
                FOUND YR 0
        OIC
    OIC

    I HAS A value ITZ input IZ get YR pos MKAY
    IM IN YR dir_loop UPPIN YR dir TIL BOTH SAEM 4 AN dir
        I HAS A off ITZ NOOB
        dir, WTF?
            OMG 0
                off R Pos IZ new YR -1 AN YR  0 MKAY
                GTFO
            OMG 1
                off R Pos IZ new YR  1 AN YR  0 MKAY
                GTFO
            OMG 2
                off R Pos IZ new YR  0 AN YR -1 MKAY
                GTFO
            OMG 3
                off R Pos IZ new YR  0 AN YR  1 MKAY
                GTFO
        OIC

        I HAS A next_pos ITZ pos IZ add YR off MKAY
        NOT input IZ in_bounds YR next_pos MKAY, O RLY?, YA RLY, SKIP DIS, OIC

        I HAS A next_value ITZ input IZ get YR next_pos MKAY
        I HAS A diff ITZ DIFF OF next_value AN value

        BOTH SAEM 1 AN diff, O RLY?, YA RLY
            count R SUM OF count AN I IZ count_trailheads YR input AN YR next_pos AN YR visited AN YR distinct MKAY
        OIC
    IM OUTTA YR dir_loop

    visited IZ set YR pos AN YR count MKAY
    FOUND YR count
IF U SAY SO

HOW IZ I count_all_trailheads YR input AN YR distinct
    I HAS A total ITZ 0

    IM IN YR row_loop UPPIN YR row TIL BOTH SAEM row AN input'Z size
        IM IN YR col_loop UPPIN YR col TIL BOTH SAEM col AN input'Z size
            I HAS A pos ITZ Pos IZ new YR col AN YR row MKAY
            BOTH SAEM 0 AN input IZ get YR pos MKAY, O RLY?, YA RLY
                I HAS A visited ITZ Mat IZ new_with_size YR input'Z size AN YR NOOB MKAY
                total R SUM OF total AN I IZ count_trailheads YR input AN YR pos AN YR visited AN YR distinct MKAY
            OIC
        IM OUTTA YR col_loop
    IM OUTTA YR row_loop

    FOUND YR total
IF U SAY SO

HOW IZ I part1 YR input
    FOUND YR I IZ count_all_trailheads YR input AN YR FAIL MKAY
IF U SAY SO

HOW IZ I part2 YR input
    FOUND YR I IZ count_all_trailheads YR input AN YR WIN MKAY
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
