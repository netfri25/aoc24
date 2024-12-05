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

    HOW IZ I swap YR index1 AN YR index2
        I HAS A temp ITZ ME IZ get YR index1 MKAY
        ME IZ set YR index1 AN YR ME IZ get YR index2 MKAY MKAY
        ME IZ set YR index2 AN YR temp MKAY
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

    HOW IZ I set YR key AN YR value
        NOT ME'Z keys IZ search YR 0 AN YR key MKAY, O RLY?, YA RLY
            ME HAS A SRS key ITZ List IZ new MKAY
            ME'Z keys IZ push YR key MKAY
        OIC

        I HAS A items_list ITZ ME'Z SRS key
        items_list IZ push YR value MKAY
    IF U SAY SO

    HOW IZ I get YR key
        NOT ME'Z keys IZ search YR 0 AN YR key MKAY, O RLY?, YA RLY
            FOUND YR NOOB
        OIC

        FOUND YR ME'Z SRS key
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "{:)"
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z keys'Z len
            I HAS A key1 ITZ ME'Z keys IZ get YR i MKAY
            I HAS A key2 ITZ ME IZ get YR key1 MKAY
            output R SMOOSH output AN "  " AN key1 AN ": " AN key2 IZ to_string MKAY AN ":)"
        IM OUTTA YR loop
        output R SMOOSH output AN "}:)"
        FOUND YR output
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
        I HAS A mapping ITZ ListMap IZ new MKAY
        I HAS A updates ITZ List IZ new MKAY
    KTHX

    IM IN YR loop TIL BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
        I HAS A lhs_str ITZ STRING IZ SLICE YR content AN YR 0 AN YR 2 MKAY
        I HAS A before ITZ MAEK lhs_str A NUMBR
        I HAS A rhs_str ITZ STRING IZ SLICE YR content AN YR 3 AN YR 5 MKAY
        I HAS A after ITZ MAEK rhs_str A NUMBR
        content R STRING IZ SLICE YR content AN YR 6 AN YR STRING IZ LEN YR content MKAY MKAY
        output'Z mapping IZ set YR after AN YR before MKAY
    IM OUTTA YR loop

    content R STRING IZ SLICE YR content AN YR 1 AN YR STRING IZ LEN YR content MKAY MKAY
    IM IN YR loop TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        I HAS A update ITZ List IZ new MKAY
        IM IN YR number_loop
            I HAS A num_str ITZ STRING IZ SLICE YR content AN YR 0 AN YR 2
            I HAS A num ITZ MAEK num_str A NUMBR
            update IZ push YR num MKAY

            I HAS A next_char ITZ STRING IZ AT YR content AN YR 2 MKAY
            content R STRING IZ SLICE YR content AN YR 3 AN YR STRING IZ LEN YR content MKAY MKAY
            DIFFRINT "," AN next_char, O RLY?, YA RLY
                GTFO
            OIC
        IM OUTTA YR number_loop
        output'Z updates IZ push YR update MKAY
    IM OUTTA YR loop

    FOUND YR output
IF U SAY SO

HOW IZ I correct_order_update YR update AN YR mapping
    IM IN YR page_loop UPPIN YR page_index TIL BOTH SAEM page_index AN update'Z len
        I HAS A page ITZ update IZ get YR page_index MKAY
        I HAS A not_after ITZ mapping IZ get YR page MKAY
        NOT not_after, O RLY?, YA RLY, SKIP DIS, OIC

        IM IN YR not_after_loop UPPIN YR i TIL BOTH SAEM i AN not_after'Z len
            update IZ search YR page_index AN YR not_after IZ get YR i MKAY MKAY, O RLY?, YA RLY
                FOUND YR FAIL
            OIC
        IM OUTTA YR not_after_loop
    IM OUTTA YR page_loop

    FOUND YR WIN
IF U SAY SO

HOW IZ I part1 YR input
    I HAS A total ITZ 0

    IM IN YR update_loop UPPIN YR update_index TIL BOTH SAEM update_index AN input'Z updates'Z len
        I HAS A update ITZ input'Z updates IZ get YR update_index MKAY
        I IZ correct_order_update YR update AN YR input'Z mapping MKAY, O RLY?, YA RLY
            I HAS A middle_index ITZ QUOSHUNT OF update'Z len AN 2
            I HAS A middle_page ITZ update IZ get YR middle_index MKAY
            total R SUM OF total AN middle_page
        OIC
    IM OUTTA YR update_loop

    FOUND YR total
IF U SAY SO

HOW IZ I make_correct YR update AN YR mapping
    I HAS A update_index ITZ 0
    IM IN YR update_loop TIL BOTH SAEM update_index AN update'Z len
        I HAS A page ITZ update IZ get YR update_index MKAY
        I HAS A not_after ITZ mapping IZ get YR page MKAY
        NOT not_after, O RLY?, YA RLY
            update_index R SUM OF update_index AN 1
            SKIP DIS
        OIC

        IM IN YR not_after_loop UPPIN YR not_after_index TIL BOTH SAEM not_after_index AN not_after'Z len
            I HAS A to_search ITZ not_after IZ get YR not_after_index MKAY
            I HAS A search ITZ update IZ search YR update_index AN YR to_search MKAY
            search, O RLY?, YA RLY
                update IZ swap YR update_index AN YR search'Z index MKAY
                update_index R DIFF OF update_index AN 1
                GTFO
            OIC
        IM OUTTA YR not_after_loop
        update_index R SUM OF update_index AN 1
    IM OUTTA YR update_loop
IF U SAY SO

HOW IZ I part2 YR input
    I HAS A total ITZ 0

    IM IN YR update_loop UPPIN YR update_index TIL BOTH SAEM update_index AN input'Z updates'Z len
        I HAS A update ITZ input'Z updates IZ get YR update_index MKAY
        I IZ correct_order_update YR update AN YR input'Z mapping MKAY, O RLY?, YA RLY, SKIP DIS, OIC
        I IZ make_correct YR update AN YR input'Z mapping MKAY
        I HAS A middle_index ITZ QUOSHUNT OF update'Z len AN 2
        I HAS A middle_page ITZ update IZ get YR middle_index MKAY
        total R SUM OF total AN middle_page
    IM OUTTA YR update_loop

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
