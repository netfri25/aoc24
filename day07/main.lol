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

    HOW IZ I to_string
        I HAS A output ITZ "["
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            output R SMOOSH output AN " " AN ME IZ get YR i MKAY
        IM OUTTA YR loop
        FOUND YR SMOOSH output AN " ]"
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
        I HAS A targets ITZ List IZ new MKAY
        I HAS A equations ITZ List IZ new MKAY
    KTHX

    IM IN YR loop TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        I HAS A newline_index ITZ I IZ index_of YR content AN YR ":)" MKAY
        I HAS A line ITZ STRING IZ SLICE YR content AN YR 0 AN YR newline_index MKAY
        content R STRING IZ SLICE YR content AN YR SUM OF newline_index AN 1 AN YR STRING IZ LEN YR content MKAY MKAY

        I HAS A colon_index ITZ I IZ index_of YR line AN YR "::"
        I HAS A target_str ITZ STRING IZ SLICE YR line AN YR 0 AN YR colon_index MKAY
        I HAS A target ITZ MAEK target_str A NUMBR
        output'Z targets IZ push YR target MKAY
        line R STRING IZ SLICE YR line AN YR SUM OF colon_index AN 2 AN YR STRING IZ LEN YR line MKAY

        line R SMOOSH line AN " " BTW for easier parsing
        I HAS A equation ITZ List IZ new MKAY
        IM IN YR equation_loop TIL BOTH SAEM 0 AN STRING IZ LEN YR line MKAY
            I HAS A space_index ITZ I IZ index_of YR line AN YR " " MKAY
            I HAS A num_str ITZ STRING IZ SLICE YR line AN YR 0 AN YR space_index MKAY
            I HAS A num ITZ MAEK num_str A NUMBR
            equation IZ push YR num MKAY
            line R STRING IZ SLICE YR line AN YR SUM OF space_index AN 1 AN YR STRING IZ LEN YR line MKAY MKAY
        IM OUTTA YR equation_loop
        output'Z equations IZ push YR equation
    IM OUTTA YR loop

    FOUND YR output
IF U SAY SO

HOW IZ I trim_num_suffix YR num AN YR suffix
    IM IN YR loop TIL BOTH SAEM 0 AN suffix
        DIFFRINT MOD OF num AN 10 AN MOD OF suffix AN 10, O RLY?, YA RLY
            FOUND YR NOOB
        OIC
        num    R QUOSHUNT OF num    AN 10
        suffix R QUOSHUNT OF suffix AN 10
    IM OUTTA YR loop
    FOUND YR num
IF U SAY SO

HOW IZ I constructable YR target AN YR equation AN YR index AN YR with_concat
    BOTH SAEM 0 AN index, O RLY?, YA RLY
        FOUND YR BOTH SAEM target AN equation IZ get YR 0 MKAY
    OIC

    BOTH SAEM 0 AN BIGGR OF 0 AN target, O RLY?, YA RLY
        FOUND YR FAIL
    OIC

    I HAS A elem ITZ equation IZ get YR index MKAY
    I HAS A ans ITZ A TROOF

    with_concat, O RLY?, YA RLY
        I HAS A trimmed ITZ I IZ trim_num_suffix YR target AN YR elem
        DIFFRINT trimmed AN NOOB, O RLY?, YA RLY
            I HAS A new_target ITZ trimmed
            ans R I IZ constructable YR new_target AN YR equation AN YR DIFF OF index AN 1 AN YR with_concat MKAY
            ans, O RLY?, YA RLY, FOUND YR WIN, OIC
        OIC
    OIC

    BOTH SAEM 0 AN MOD OF target AN elem, O RLY?, YA RLY
        I HAS A new_target ITZ QUOSHUNT OF target AN elem
        ans R I IZ constructable YR new_target AN YR equation AN YR DIFF OF index AN 1 AN YR with_concat MKAY
        ans, O RLY?, YA RLY, FOUND YR WIN, OIC
    OIC

    ans R I IZ constructable YR DIFF OF target AN elem AN YR equation AN YR DIFF OF index AN 1 AN YR with_concat MKAY
    ans, O RLY?, YA RLY, FOUND YR WIN, OIC

    FOUND YR FAIL
IF U SAY SO

HOW IZ I count_constructable YR input AN YR with_concat
    I HAS A result ITZ 0

    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN input'Z targets'Z len
        I HAS A target ITZ input'Z targets IZ get YR i MKAY
        I HAS A equation ITZ input'Z equations IZ get YR i MKAY
        I HAS A total ITZ equation IZ get YR 0 MKAY
        I IZ constructable YR target AN YR equation AN YR DIFF OF equation'Z len AN 1 AN YR with_concat MKAY, O RLY?, YA RLY
            result R SUM OF result AN target
        OIC
    IM OUTTA YR loop

    FOUND YR result
IF U SAY SO

HOW IZ I part1 YR input
    FOUND YR I IZ count_constructable YR input AN YR FAIL
IF U SAY SO

HOW IZ I part2 YR input
    FOUND YR I IZ count_constructable YR input AN YR WIN
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
