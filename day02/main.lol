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

    HOW IZ I copy_without YR index
        O HAI IM result IM LIEK List
            I HAS A len ITZ 0
        KTHX

        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            DIFFRINT i AN index, O RLY?, YA RLY
                result IZ push YR ME IZ get YR i MKAY
            OIC
        IM OUTTA YR loop

        FOUND YR result
    IF U SAY SO
KTHX

HOW IZ I read_input
    I HAS A path ITZ "input"
    I HAS A file ITZ FILE IZ OPEN YR path MKAY
    NOT file, O RLY?, YA RLY
        INVISIBLE SMOOSH "no file `" AN path AN "` ::("
        FOUND YR NOOB
    OIC

    O HAI IM result IM LIEK List
        I HAS A len ITZ 0
    KTHX

    I HAS A content ITZ FILE IZ GETZ YR file MKAY
    IM IN YR line_loop TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        I HAS A index ITZ I IZ index_of YR content AN YR ":)" MKAY
        I HAS A line ITZ STRING IZ SLICE YR content AN YR 0 AN YR index MKAY
        I HAS A row ITZ I IZ parse_line YR line MKAY
        result IZ push YR row MKAY
        content R STRING IZ SLICE YR content AN YR SUM OF index AN 1 AN YR STRING IZ LEN YR content MKAY MKAY
    IM OUTTA YR line_loop

    FOUND YR result
IF U SAY SO

HOW IZ I parse_line YR line
    O HAI IM row IM LIEK List
        I HAS A len ITZ 0
    KTHX

    IM IN YR loop TIL BOTH SAEM 0 AN STRING IZ LEN YR line MKAY
        I HAS A index ITZ I IZ index_of YR line AN YR " " MKAY
        I HAS A num_str ITZ STRING IZ SLICE YR line AN YR 0 AN YR index MKAY
        I HAS A num ITZ MAEK num_str A NUMBR
        row IZ push YR num MKAY
        line R STRING IZ SLICE YR line AN YR SUM OF index AN 1 AN YR STRING IZ LEN YR line MKAY MKAY
    IM OUTTA YR loop

    FOUND YR row
IF U SAY SO

HOW IZ I index_of YR str AN YR char
    I HAS A index ITZ 0
    IM IN YR loop UPPIN YR index TIL EITHER OF  BOTH SAEM index AN STRING IZ LEN YR str MKAY  AN  BOTH SAEM char AN STRING IZ AT YR str AN YR index MKAY
    IM OUTTA YR loop
    FOUND YR index
IF U SAY SO

HOW IZ I abs YR value
    DIFFRINT 0 AN SMALLR OF 0 AN value, O RLY?
        YA RLY
            FOUND YR DIFF OF 0 AN value
        NO WAI
            FOUND YR value
    OIC
IF U SAY SO

HOW IZ I sign_of YR value
    BOTH SAEM 0 AN value, O RLY?
        YA RLY
            FOUND YR 0
        MEBBE DIFFRINT 0 AN SMALLR OF 0 AN value
            FOUND YR -1
        NO WAI
            FOUND YR 1
    OIC
IF U SAY SO

HOW IZ I is_safe YR row
    I HAS A sign ITZ 0
    I HAS A safe ITZ WIN
    IM IN YR value_loop UPPIN YR value_index TIL BOTH SAEM 1 AN DIFF OF row'Z len AN value_index
        I HAS A lhs ITZ row IZ get YR value_index MKAY
        I HAS A rhs ITZ row IZ get YR SUM OF value_index AN 1 MKAY
        I HAS A delta ITZ DIFF OF lhs AN rhs
        I HAS A abs_delta ITZ I IZ abs YR delta MKAY
        I HAS A sign_delta ITZ I IZ sign_of YR delta MKAY

        abs_delta, WTF?
            OMG 1, OMG 2, OMG 3
            OMGWTF, safe R FAIL
        OIC

        NOT safe, O RLY?, YA RLY, GTFO, OIC

        BOTH SAEM sign AN 0, O RLY?, YA RLY
            sign R sign_delta
        OIC

        DIFFRINT sign AN sign_delta, O RLY?, YA RLY
            safe R FAIL
            GTFO
        OIC
    IM OUTTA YR value_loop
    FOUND YR safe
IF U SAY SO

HOW IZ I part1 YR rows
    I HAS A count ITZ 0

    IM IN YR row_loop UPPIN YR row_index TIL BOTH SAEM row_index AN rows'Z len
        I HAS A row ITZ rows IZ get YR row_index MKAY
        I IZ is_safe YR row MKAY, O RLY?, YA RLY
            count R SUM OF count AN 1
        OIC
    IM OUTTA YR row_loop

    FOUND YR count
IF U SAY SO

HOW IZ I part2 YR rows
    I HAS A count ITZ 0

    IM IN YR row_loop UPPIN YR row_index TIL BOTH SAEM row_index AN rows'Z len
        I HAS A row ITZ rows IZ get YR row_index MKAY
        I IZ is_safe YR row MKAY, O RLY?
            YA RLY
                count R SUM OF count AN 1
            NO WAI
                IM IN YR remove_loop UPPIN YR index TIL BOTH SAEM index AN row'Z len
                    I HAS A new_row ITZ row IZ copy_without YR index MKAY
                    I IZ is_safe YR new_row MKAY, O RLY?, YA RLY
                        count R SUM OF count AN 1
                        GTFO
                    OIC
                IM OUTTA YR remove_loop
        OIC
    IM OUTTA YR row_loop

    FOUND YR count
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
