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

    HOW IZ I set YR pos AN YR value
        I HAS A pos_str ITZ pos IZ to_string MKAY
        ME HAS A SRS pos_str ITZ value
        ME'Z size R BIGGR OF ME'Z size AN SUM OF 1 AN BIGGR OF pos'Z x AN pos'Z y
    IF U SAY SO

    HOW IZ I get YR pos
        I HAS A pos_str ITZ MAEK pos A YARN
        FOUND YR ME'Z SRS pos_str
    IF U SAY SO

    HOW IZ I contains YR pos
        FOUND YR DIFFRINT ME IZ get YR pos MKAY AN NOOB
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

    HOW IZ I to_string
        I HAS A output ITZ "["
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            output R SMOOSH output AN " " AN ME IZ get YR i MKAY
        IM OUTTA YR loop
        FOUND YR SMOOSH output AN " ]"
    IF U SAY SO
KTHX

O HAI IM VisitedMap
    I HAS A keys ITZ LIEK A List

    HOW IZ I new
        O HAI IM result IM LIEK VisitedMap
            I HAS A keys ITZ List IZ new MKAY
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I insert YR key AN YR value
        I HAS A key_str ITZ MAEK key A YARN
        BOTH SAEM ME IZ get YR key MKAY AN NOOB, O RLY?, YA RLY
            ME HAS A SRS key_str ITZ List IZ new MKAY
            ME'Z keys IZ push YR key MKAY
        OIC

        I HAS A items_list ITZ ME'Z SRS key_str
        items_list IZ push YR value MKAY
    IF U SAY SO

    HOW IZ I exists YR key AN YR pos
        I HAS A items ITZ ME IZ get YR key MKAY
        BOTH SAEM items AN NOOB, O RLY?, YA RLY, FOUND YR FAIL, OIC
        IM IN YR item_loop UPPIN YR i TIL BOTH SAEM i AN items'Z len
            I HAS A item ITZ items IZ get YR i MKAY
            BOTH OF BOTH SAEM item'Z x AN pos'Z x AN BOTH SAEM item'Z y AN pos'Z y, O RLY?, YA RLY
                FOUND YR WIN
            OIC
        IM OUTTA YR item_loop
        FOUND YR FAIL
    IF U SAY SO

    HOW IZ I get YR key
        I HAS A key_str ITZ key IZ to_string MKAY
        FOUND YR ME'Z SRS key_str
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "{:)"
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z keys'Z len
            I HAS A key ITZ ME'Z keys IZ get YR i MKAY
            I HAS A value ITZ ME IZ get YR key MKAY
            output R SMOOSH output AN "  " AN key IZ to_string MKAY AN ": " AN value IZ to_string MKAY AN ":)"
        IM OUTTA YR loop
        output R SMOOSH output AN "}:)"
        FOUND YR output
    IF U SAY SO

    HOW IZ I clean
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z keys'Z len
            I HAS A key ITZ ME'Z keys IZ get YR i MKAY
            I HAS A items ITZ ME IZ get YR key MKAY
            items'Z len R 0
            VISIBLE ME
        IM OUTTA YR loop
        ME'Z keys'Z len R 0
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

    HOW IZ I rotate_clockwise
        I HAS A dx ITZ ME'Z x
        I HAS A dy ITZ ME'Z y
        I HAS A res_x ITZ DIFF OF 0 AN dy
        I HAS A res_y ITZ dx
        FOUND YR Pos IZ new YR res_x AN YR res_y MKAY
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

    O HAI IM output
        I HAS A grid ITZ Mat IZ new MKAY
        I HAS A visited ITZ VisitedMap IZ new MKAY
    KTHX

    IM IN YR row_loop UPPIN YR row TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        IM IN YR col_loop UPPIN YR col TIL BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
            I HAS A char ITZ STRING IZ AT YR content AN YR 0 MKAY
            I HAS A pos ITZ Pos IZ new YR col AN YR row MKAY
            output'Z grid IZ set YR pos AN YR char MKAY
            content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
        IM OUTTA YR col_loop
        content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY
    IM OUTTA YR row_loop

    FOUND YR output
IF U SAY SO

HOW IZ I find_guard YR input
    IM IN YR row_loop UPPIN YR y TIL BOTH SAEM y AN input'Z grid'Z size
        IM IN YR col_loop UPPIN YR x TIL BOTH SAEM x AN input'Z grid'Z size
            I HAS A pos ITZ Pos IZ new YR x AN YR y MKAY
            I HAS A char ITZ input'Z grid IZ get YR pos MKAY
            BOTH SAEM "^" AN char, O RLY?, YA RLY
                FOUND YR pos
            OIC
        IM OUTTA YR col_loop
    IM OUTTA YR row_loop
    FOUND YR NOOB
IF U SAY SO

BTW returns NOOB when there's a loop
HOW IZ I visit YR input
    I HAS A delta ITZ Pos IZ new YR 0 AN YR -1 MKAY
    I HAS A pos ITZ I IZ find_guard YR input MKAY

    IM IN YR loop WILE input'Z grid IZ contains YR pos MKAY
        I HAS A rotations ITZ 0
        IM IN YR dir_loop UPPIN YR rotations TIL BOTH SAEM rotations AN 4
            I HAS A next_pos ITZ pos IZ add YR delta MKAY
            I HAS A char ITZ input'Z grid IZ get YR next_pos MKAY
            BOTH SAEM "#" AN char, O RLY?
                YA RLY
                    delta R delta IZ rotate_clockwise MKAY
                NO WAI
                    input'Z visited IZ exists YR pos AN YR delta MKAY, O RLY?, YA RLY, FOUND YR NOOB, OIC
                    input'Z visited IZ insert YR pos AN YR delta MKAY
                    pos R next_pos
                    GTFO
            OIC
        IM OUTTA YR dir_loop
        BOTH SAEM rotations AN 4, O RLY?, YA RLY, FOUND YR NOOB, OIC
    IM OUTTA YR loop

    FOUND YR input'Z visited'Z keys'Z len
IF U SAY SO

HOW IZ I part1 YR input
    FOUND YR I IZ visit YR input MKAY
IF U SAY SO

HOW IZ I part2 YR input
    I HAS A total ITZ 0
    I HAS A original_visited ITZ input'Z visited
    input'Z visited R VisitedMap IZ new MKAY

    IM IN YR loop UPPIN YR index TIL BOTH SAEM index AN original_visited'Z keys'Z len
        I HAS A pos ITZ original_visited'Z keys IZ get YR index MKAY
        BOTH SAEM "^" AN input'Z grid IZ get YR pos MKAY, O RLY?, YA RLY, SKIP DIS, OIC
        input'Z visited R NOOB
        input HAS A visited ITZ VisitedMap IZ new MKAY
        input'Z grid IZ set YR pos AN YR "#" MKAY
        BOTH SAEM I IZ visit YR input MKAY AN NOOB, O RLY?, YA RLY
            total R SUM OF total AN 1
        OIC
        input'Z grid IZ set YR pos AN YR "." MKAY
    IM OUTTA YR loop

    FOUND YR total
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
