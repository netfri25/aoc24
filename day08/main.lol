CAN HAS FILE?
CAN HAS STRING?

O HAI IM List
    I HAS A len ITZ A NUMBR

    HOW IZ I new
        O HAI IM result IM LIEK List
            I HAS A len ITZ 0
        KTHX
        FOUND YR result
    IF U SAY SO

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

    HOW IZ I search YR from AN YR value
        I HAS A i ITZ from
        IM IN YR loop UPPIN YR i TIL BOTH SAEM ME'Z len AN i
            BOTH SAEM value AN ME IZ get YR i MKAY, O RLY?, YA RLY
                O HAI IM result
                    I HAS A index ITZ i
                KTHX
                FOUND YR result
            OIC
        IM OUTTA YR loop

        FOUND YR NOOB
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "["
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            output R SMOOSH output AN " " AN ME IZ get YR i MKAY
        IM OUTTA YR loop
        FOUND YR SMOOSH output AN " ]"
    IF U SAY SO
KTHX

O HAI IM ListMap
    I HAS A keys ITZ LIEK A List

    HOW IZ I new
        O HAI IM result IM LIEK ListMap
            I HAS A keys ITZ List IZ new MKAY
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I insert YR key AN YR value
        NOT ME'Z keys IZ search YR 0 AN YR key MKAY, O RLY?, YA RLY
            ME HAS A SRS SMOOSH "key-" AN key MKAY ITZ List IZ new MKAY
            ME'Z keys IZ push YR key MKAY
        OIC

        I HAS A items_list ITZ ME'Z SRS SMOOSH "key-" AN key
        items_list IZ push YR value MKAY
    IF U SAY SO

    HOW IZ I get YR key
        NOT ME'Z keys IZ search YR 0 AN YR key MKAY, O RLY?, YA RLY
            FOUND YR NOOB
        OIC

        FOUND YR ME'Z SRS SMOOSH "key-" AN key MKAY
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "{:)"
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z keys'Z len
            I HAS A key ITZ ME'Z keys IZ get YR i MKAY
            I HAS A value ITZ ME IZ get YR key MKAY
            output R SMOOSH output AN "  " AN key AN ": " AN value AN ":)"
        IM OUTTA YR loop
        output R SMOOSH output AN "}:)"
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

    HOW IZ I mult YR scalar
        FOUND YR Pos IZ new YR PRODUKT OF ME'Z x AN scalar AN YR PRODUKT OF ME'Z y AN scalar
    IF U SAY SO

    HOW IZ I to_string
        FOUND YR SMOOSH ME'Z x AN "x" AN ME'Z y
    IF U SAY SO
KTHX

O HAI IM Set
    I HAS A items ITZ LIEK A List

    HOW IZ I new
        O HAI IM result IM LIEK Set
            I HAS A items ITZ List IZ new MKAY
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I contains YR key
        FOUND YR DIFFRINT NOOB AN ME'Z SRS SMOOSH "key-" AN key MKAY
    IF U SAY SO

    HOW IZ I insert YR key
        ME IZ contains YR key MKAY, O RLY?, YA RLY, FOUND YR FAIL, OIC
        ME HAS A SRS SMOOSH "key-" AN key MKAY ITZ WIN
        ME'Z items IZ push YR key MKAY
        FOUND YR WIN
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "{"
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z items'Z len
            output R SMOOSH output AN " " AN ME'Z items IZ get YR i MKAY
        IM OUTTA YR loop
        FOUND YR SMOOSH output AN " }"
    IF U SAY SO
KTHX

HOW IZ I index_of YR str AN YR char
    I HAS A index ITZ 0
    IM IN YR loop UPPIN YR index TIL EITHER OF  BOTH SAEM index AN STRING IZ LEN YR str MKAY  AN  BOTH SAEM char AN STRING IZ AT YR str AN YR index MKAY
    IM OUTTA YR loop
    FOUND YR index
IF U SAY SO

HOW IZ I read_input YR path
    I HAS A file ITZ FILE IZ OPEN YR path MKAY
    NOT file, O RLY?, YA RLY
        INVISIBLE SMOOSH "no file `" AN path AN "` ::("
        FOUND YR NOOB
    OIC
    I HAS A content ITZ FILE IZ GETZ YR file MKAY

    O HAI IM output
        I HAS A antennas ITZ ListMap IZ new MKAY
        I HAS A size ITZ Pos IZ new YR 0 AN YR 0 MKAY
    KTHX

    I HAS A row ITZ 0
    IM IN YR line_loop UPPIN YR row TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        I HAS A newline_index ITZ I IZ index_of YR content AN YR ":)" MKAY
        I HAS A line ITZ STRING IZ SLICE YR content AN YR 0 AN YR newline_index MKAY
        content R STRING IZ SLICE YR content AN YR SUM OF newline_index AN 1 AN YR STRING IZ LEN YR content MKAY MKAY

        I HAS A col ITZ 0
        IM IN YR col_loop UPPIN YR col TIL BOTH SAEM col AN STRING IZ LEN YR line MKAY
            I HAS A char ITZ STRING IZ AT YR line AN YR col MKAY
            DIFFRINT char AN ".", O RLY?, YA RLY
                I HAS A pos ITZ Pos IZ new YR col AN YR row MKAY
                output'Z antennas IZ insert YR char AN YR pos MKAY
            OIC
        IM OUTTA YR col_loop
        output'Z size'Z x R col
    IM OUTTA YR line_loop
    output'Z size'Z y R row

    FOUND YR output
IF U SAY SO

HOW IZ I in_bounds YR size AN YR pos
    FOUND YR ALL OF  NOT BOTH SAEM pos'Z x AN BIGGR OF pos'Z x AN size'Z x  AN  NOT BOTH SAEM pos'Z y AN BIGGR OF pos'Z y AN size'Z y  AN  BOTH SAEM 0 AN SMALLR OF 0 AN pos'Z x  AN  BOTH SAEM 0 AN SMALLR OF 0 AN pos'Z y
IF U SAY SO

HOW IZ I solve YR input AN YR full_length
    I HAS A antinodes ITZ Set IZ new MKAY

    IM IN YR antenna_type_loop UPPIN YR antenna_index TIL BOTH SAEM antenna_index AN input'Z antennas'Z keys'Z len
        I HAS A antenna ITZ input'Z antennas'Z keys IZ get YR antenna_index MKAY
        I HAS A positions ITZ input'Z antennas IZ get YR antenna MKAY
        IM IN YR pos1_loop UPPIN YR i TIL BOTH SAEM i AN positions'Z len
            I HAS A pos1 ITZ positions IZ get YR i MKAY
            IM IN YR pos2_loop UPPIN YR j TIL BOTH SAEM j AN positions'Z len
                BOTH SAEM i AN j, O RLY?, YA RLY, SKIP DIS, OIC
                I HAS A pos2 ITZ positions IZ get YR j MKAY
                I HAS A dx ITZ DIFF OF pos2'Z x AN pos1'Z x
                I HAS A dy ITZ DIFF OF pos2'Z y AN pos1'Z y
                I HAS A delta ITZ Pos IZ new YR dx AN YR dy MKAY

                full_length, O RLY?
                    YA RLY
                        IM IN YR forward_loop UPPIN YR multiplier WILE I IZ in_bounds YR input'Z size AN YR pos1 IZ add YR delta IZ mult YR multiplier MKAY MKAY MKAY
                            I HAS A antinode_pos ITZ pos1 IZ add YR delta IZ mult YR multiplier MKAY MKAY
                            antinodes IZ insert YR antinode_pos MKAY
                        IM OUTTA YR forward_loop

                        delta R delta IZ mult YR -1 MKAY
                        IM IN YR backward_loop UPPIN YR multiplier WILE I IZ in_bounds YR input'Z size AN YR pos1 IZ add YR delta IZ mult YR multiplier MKAY MKAY MKAY
                            I HAS A antinode_pos ITZ pos1 IZ add YR delta IZ mult YR multiplier MKAY MKAY
                            antinodes IZ insert YR antinode_pos MKAY
                        IM OUTTA YR backward_loop
                    NO WAI
                        I HAS A antinode_pos ITZ pos2 IZ add YR delta MKAY
                        I IZ in_bounds YR input'Z size AN YR antinode_pos MKAY, O RLY?, YA RLY
                            antinodes IZ insert YR antinode_pos MKAY
                        OIC
                OIC
            IM OUTTA YR pos2_loop
        IM OUTTA YR pos1_loop
    IM OUTTA YR antenna_type_loop

    FOUND YR antinodes'Z items'Z len
IF U SAY SO

HOW IZ I part1 YR input
    FOUND YR I IZ solve YR input AN YR FAIL
IF U SAY SO

HOW IZ I part2 YR input
    FOUND YR I IZ solve YR input AN YR WIN
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
