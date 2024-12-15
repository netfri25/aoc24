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
    I HAS A robot_pos ITZ NOOB

    BTW parse the grid
    IM IN YR row_loop UPPIN YR row TIL BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
        IM IN YR col_loop UPPIN YR col TIL BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
            I HAS A pos ITZ Pos IZ new YR col AN YR row MKAY
            I HAS A char ITZ STRING IZ AT YR content AN YR 0 MKAY
            grid IZ insert YR pos AN YR char MKAY
            content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
        IM OUTTA YR col_loop
        content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
    IM OUTTA YR row_loop

    BTW skip the empty line betweem the grid and the instructions
    content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY

    BTW parse the instructions
    I HAS A insts ITZ List IZ new MKAY
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN STRING IZ LEN YR content MKAY
        I HAS A inst ITZ STRING IZ AT YR content AN YR i MKAY
        BOTH SAEM ":)" AN inst, O RLY?, YA RLY, SKIP DIS, OIC
        insts IZ push YR inst
    IM OUTTA YR loop

    O HAI IM output
        I HAS A grid ITZ grid
        I HAS A insts ITZ insts
    KTHX
    FOUND YR output
IF U SAY SO

HOW IZ I can_move YR grid AN YR pos AN YR dir
    I HAS A cell ITZ grid IZ get YR pos MKAY
    cell, WTF?
        OMG "."
            FOUND YR WIN

        OMG "@"  BTW intentional fallthrough
        OMG "O"
            I HAS A next_pos ITZ pos IZ add YR dir MKAY
            FOUND YR I IZ can_move YR grid AN YR next_pos AN YR dir MKAY

        OMG "["  BTW intentional fallthrough
        OMG "]"
            I HAS A next_pos_left
            I HAS A next_pos_right
            BOTH SAEM "[" AN cell, O RLY?
                YA RLY
                    next_pos_left R pos IZ add YR dir MKAY
                    next_pos_right R next_pos_left IZ add YR Pos IZ new YR 1 AN YR 0 MKAY
                NO WAI
                    next_pos_right R pos IZ add YR dir MKAY
                    next_pos_left R next_pos_right IZ add YR Pos IZ new YR -1 AN YR 0 MKAY
            OIC

            dir'Z x, WTF?
                OMG 0
                    FOUND YR BOTH OF  I IZ can_move YR grid AN YR next_pos_left  AN YR dir MKAY  AN  I IZ can_move YR grid AN YR next_pos_right AN YR dir MKAY
                OMG 1
                    FOUND YR I IZ can_move YR grid AN YR next_pos_right AN YR dir MKAY
                OMG -1
                    FOUND YR I IZ can_move YR grid AN YR next_pos_left AN YR dir MKAY
            OIC
    OIC

    FOUND YR FAIL
IF U SAY SO

HOW IZ I move YR grid AN YR pos AN YR dir
    BTW don't move if it can't be moved
    NOT I IZ can_move YR grid AN YR pos AN YR dir MKAY, O RLY?, YA RLY, FOUND YR NOOB, OIC

    I HAS A cell ITZ grid IZ get YR pos MKAY
    cell, WTF?
        OMG "@"  BTW intentional fallthrough
        OMG "O"
            I HAS A next_pos ITZ pos IZ add YR dir MKAY
            I IZ move YR grid AN YR next_pos AN YR dir MKAY

            BTW move it
            grid IZ set YR next_pos AN YR cell MKAY
            grid IZ set YR pos AN YR "." MKAY

            BTW return the new position, so that I can keep track of the robot easily
            FOUND YR next_pos

        OMG "["
        OMG "]"
            I HAS A pos_left
            I HAS A pos_right
            BOTH SAEM "[" AN cell, O RLY?
                YA RLY
                    pos_left R pos
                    pos_right R pos IZ add YR Pos IZ new YR 1 AN YR 0 MKAY
                NO WAI
                    pos_right R pos
                    pos_left R pos IZ add YR Pos IZ new YR -1 AN YR 0 MKAY
            OIC

            I HAS A next_pos_left ITZ pos_left IZ add YR dir MKAY
            I HAS A next_pos_right ITZ pos_right IZ add YR dir MKAY

            grid IZ set YR pos_left AN YR "." MKAY
            grid IZ set YR pos_right AN YR "." MKAY

            DIFFRINT -1 AN dir'Z x, O RLY?, YA RLY
                I IZ move YR grid AN YR next_pos_right AN YR dir MKAY
            OIC

            DIFFRINT 1 AN dir'Z x, O RLY?, YA RLY
                I IZ move YR grid AN YR next_pos_left AN YR dir MKAY
            OIC

            grid IZ set YR next_pos_right AN YR "]" MKAY
            grid IZ set YR next_pos_left AN YR "[" MKAY
    OIC
IF U SAY SO

HOW IZ I calculate_score YR grid
    I HAS A total ITZ 0

    IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN grid'Z rows
        IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN grid'Z cols
            I HAS A pos ITZ Pos IZ new YR x AN YR y MKAY
            I HAS A cell ITZ grid IZ get YR pos MKAY
            EITHER OF BOTH SAEM cell AN "O" AN BOTH SAEM cell AN "[", O RLY?, YA RLY
                total R SUM OF total AN SUM OF x AN PRODUKT OF 100 AN y
            OIC
        IM OUTTA YR col_loop
    IM OUTTA YR row_loop

    FOUND YR total
IF U SAY SO

HOW IZ I find_robot YR grid
    IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN grid'Z rows
        IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN grid'Z cols
            I HAS A pos ITZ Pos IZ new YR x AN YR y MKAY
            I HAS A cell ITZ grid IZ get YR pos MKAY
            BOTH SAEM "@" AN cell, O RLY?, YA RLY, FOUND YR pos, OIC
        IM OUTTA YR col_loop
    IM OUTTA YR row_loop
IF U SAY SO

I HAS A DIR_MAP ITZ A BUKKIT
DIR_MAP HAS A SRS ">" ITZ Pos IZ new YR  1 AN YR  0 MKAY
DIR_MAP HAS A SRS "v" ITZ Pos IZ new YR  0 AN YR  1 MKAY
DIR_MAP HAS A SRS "<" ITZ Pos IZ new YR -1 AN YR  0 MKAY
DIR_MAP HAS A SRS "^" ITZ Pos IZ new YR  0 AN YR -1 MKAY

HOW IZ I simulate YR grid AN YR insts AN YR display
    I HAS A pos ITZ I IZ find_robot YR grid MKAY

    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN insts'Z len
        I HAS A inst ITZ insts IZ get YR i MKAY
        I HAS A dir ITZ DIR_MAP'Z SRS inst
        I HAS A next_pos ITZ I IZ move YR grid AN YR pos AN YR dir MKAY
        NOT next_pos, O RLY?, YA RLY, SKIP DIS, OIC
        pos R next_pos
        display, O RLY?, YA RLY
            I HAS A text ITZ grid IZ to_string MKAY
            text R STRING IZ SLICE YR text AN YR 0 AN YR DIFF OF STRING IZ LEN YR text MKAY AN 1 MKAY
            VISIBLE SMOOSH ":(1B)[2J:(1B)[H" AN text
            I DUZ "sleep 0.02"
        OIC
    IM OUTTA YR loop
IF U SAY SO

HOW IZ I extend YR grid
    I HAS A output ITZ Mat IZ new MKAY

    IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN grid'Z rows
        IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN grid'Z cols
            I HAS A pos ITZ Pos IZ new YR x AN YR y MKAY
            I HAS A cell ITZ grid IZ get YR pos MKAY

            I HAS A pos1 ITZ Pos IZ new YR SUM OF 0 AN PRODUKT OF 2 AN x AN YR y MKAY
            I HAS A pos2 ITZ Pos IZ new YR SUM OF 1 AN PRODUKT OF 2 AN x AN YR y MKAY

            cell, WTF?
                OMG "#"
                    output IZ insert YR pos1 AN YR "#" MKAY
                    output IZ insert YR pos2 AN YR "#" MKAY
                    GTFO

                OMG "."
                    output IZ insert YR pos1 AN YR "." MKAY
                    output IZ insert YR pos2 AN YR "." MKAY
                    GTFO

                OMG "O"
                    output IZ insert YR pos1 AN YR "[" MKAY
                    output IZ insert YR pos2 AN YR "]" MKAY
                    GTFO

                OMG "@"
                    output IZ insert YR pos1 AN YR "@" MKAY
                    output IZ insert YR pos2 AN YR "." MKAY
                    GTFO
            OIC
        IM OUTTA YR col_loop
    IM OUTTA YR row_loop

    FOUND YR output
IF U SAY SO

HOW IZ I part1 YR input
    I HAS A grid ITZ input'Z grid IZ clone MKAY
    I HAS A insts ITZ input'Z insts

    I IZ simulate YR grid AN YR insts AN YR FAIL MKAY
    FOUND YR I IZ calculate_score YR grid MKAY
IF U SAY SO

HOW IZ I part2 YR input
    I HAS A grid ITZ input'Z grid
    I HAS A insts ITZ input'Z insts

    grid R I IZ extend YR grid MKAY
    I IZ simulate YR grid AN YR insts AN YR FAIL MKAY
    FOUND YR I IZ calculate_score YR grid MKAY
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
