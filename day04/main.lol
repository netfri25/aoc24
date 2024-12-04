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

    HOW IZ I set YR x AN YR y AN YR value
        ME HAS A SRS SMOOSH x AN "x" AN y MKAY ITZ value
        ME'Z size R BIGGR OF ME'Z size AN SUM OF 1 AN BIGGR OF x AN y
    IF U SAY SO

    HOW IZ I get YR x AN YR y
        FOUND YR ME'Z SRS SMOOSH x AN "x" AN y MKAY
    IF U SAY SO

    HOW IZ I in_range YR i
        FOUND YR BOTH OF  BOTH SAEM i AN BIGGR OF i AN 0  AN  DIFFRINT i AN BIGGR OF i AN ME'Z size
    IF U SAY SO

    HOW IZ I in_bounds YR x AN YR y
        FOUND YR BOTH OF ME IZ in_range YR x MKAY  AN  ME IZ in_range YR y MKAY
    IF U SAY SO
KTHX

HOW IZ I read_input
    I HAS A path ITZ "input"
    I HAS A file ITZ FILE IZ OPEN YR path MKAY
    NOT file, O RLY?, YA RLY
        INVISIBLE SMOOSH "no file `" AN path AN "` ::("
        FOUND YR NOOB
    OIC

    I HAS A content ITZ FILE IZ GETZ YR file MKAY

    I HAS A result ITZ Mat IZ new MKAY
    I HAS A row ITZ 0
    I HAS A col ITZ 0
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN STRING IZ LEN YR content MKAY
        I HAS A char ITZ STRING IZ AT YR content AN YR i MKAY
        BOTH SAEM char AN ":)", O RLY?
            YA RLY
                row R SUM OF row AN 1
                col R 0
            NO WAI
                result IZ set YR col AN YR row AN YR char MKAY
                col R SUM OF col AN 1
        OIC
    IM OUTTA YR loop

    FOUND YR result
IF U SAY SO

HOW IZ I count_word YR mat AN YR word AN YR x_only
    I HAS A result ITZ 0
    IM IN YR off_y_loop UPPIN YR off_y TIL BOTH SAEM off_y AN SUM OF mat'Z size AN 1
        IM IN YR off_x_loop UPPIN YR off_x TIL BOTH SAEM off_x AN SUM OF mat'Z size AN 1
            I HAS A around_count ITZ 0

            IM IN YR direction_loop UPPIN YR direction TIL BOTH SAEM direction AN 9
                I HAS A dy ITZ DIFF OF QUOSHUNT OF direction AN 3 AN 1
                I HAS A dx ITZ DIFF OF MOD OF direction AN 3 AN 1
                BOTH OF BOTH SAEM 0 AN dy AN BOTH SAEM 0 AN dx, O RLY?, YA RLY
                    SKIP DIS
                OIC

                BOTH OF x_only AN EITHER OF BOTH SAEM 0 AN dx AN BOTH SAEM 0 AN dy, O RLY?, YA RLY
                    SKIP DIS
                OIC

                I HAS A x ITZ DIFF OF off_x AN dx
                I HAS A y ITZ DIFF OF off_y AN dy
                I HAS A i ITZ 0
                IM IN YR loop UPPIN YR i WILE BOTH OF DIFFRINT i AN BIGGR OF STRING IZ LEN YR word MKAY AN i AN mat IZ in_bounds YR x AN YR y MKAY
                    I HAS A required ITZ STRING IZ AT YR word AN YR i MKAY
                    DIFFRINT required AN mat IZ get YR x AN YR y MKAY, O RLY?, YA RLY
                        GTFO
                    OIC
                    x R SUM OF x AN dx
                    y R SUM OF y AN dy
                IM OUTTA YR loop

                BOTH SAEM i AN STRING IZ LEN YR word MKAY, O RLY?, YA RLY
                    around_count R SUM OF around_count AN 1
                OIC
            IM OUTTA YR direction_loop

            x_only, O RLY?
                YA RLY
                    result R SUM OF result AN MAEK BOTH SAEM 2 AN around_count A NUMBR
                NO WAI
                    result R SUM OF result AN around_count
            OIC
        IM OUTTA YR off_x_loop
    IM OUTTA YR off_y_loop
    FOUND YR result
IF U SAY SO

HOW IZ I part1 YR input
    FOUND YR I IZ count_word YR input AN YR "XMAS" AN YR FAIL MKAY
IF U SAY SO

HOW IZ I part2 YR input
    FOUND YR I IZ count_word YR input AN YR "MAS" AN YR WIN MKAY
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
