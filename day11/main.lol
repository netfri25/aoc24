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

    HOW IZ I append YR list
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN list'Z len
            I HAS A value ITZ list IZ get YR i MKAY
            ME IZ push YR value MKAY
        IM OUTTA YR loop
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

    I HAS A output ITZ List IZ new MKAY

    IM IN YR loop TIL EITHER OF  BOTH SAEM 0 AN STRING IZ LEN YR content MKAY  AN  BOTH SAEM ":)" AN STRING IZ AT YR content AN YR 0 MKAY
        I HAS A space_index ITZ I IZ index_of YR content AN YR " " MKAY
        BOTH SAEM space_index AN STRING IZ LEN YR content MKAY, O RLY?, YA RLY
            space_index R DIFF OF space_index AN 1
        OIC
        I HAS A num_str ITZ STRING IZ SLICE YR content AN YR 0 AN YR space_index MKAY
        I HAS A num ITZ MAEK num_str A NUMBR
        output IZ push YR num MKAY
        content R STRING IZ SLICE YR content AN YR SUM OF space_index AN 1 AN YR STRING IZ LEN YR content MKAY MKAY
    IM OUTTA YR loop

    FOUND YR output
IF U SAY SO

I HAS A STONES_CACHE ITZ A BUKKIT

HOW IZ I count_stones YR stone AN YR depth
    BOTH SAEM 0 AN depth, O RLY?, YA RLY
        FOUND YR 1
    OIC

    I HAS A key ITZ SMOOSH stone AN "x" AN depth MKAY
    I HAS A cache ITZ STONES_CACHE'Z SRS key
    DIFFRINT NOOB AN cache, O RLY?, YA RLY
        FOUND YR cache
    OIC

    I HAS A result ITZ A NUMBR
    BOTH SAEM 0 AN stone, O RLY?
        YA RLY
            result R I IZ count_stones YR 1 AN YR DIFF OF depth AN 1 MKAY
        NO WAI
            I HAS A digits_count ITZ SUM OF 1 AN LOLG OF stone AN 10
            BOTH SAEM 0 AN MOD OF digits_count AN 2, O RLY?
                YA RLY
                    I HAS A half_digits ITZ POWR OF 10 AN QUOSHUNT OF digits_count AN 2
                    I HAS A lhs ITZ QUOSHUNT OF stone AN half_digits
                    I HAS A rhs ITZ MOD OF      stone AN half_digits
                    result R SUM OF  I IZ count_stones YR lhs AN YR DIFF OF depth AN 1 MKAY  AN  I IZ count_stones YR rhs AN YR DIFF OF depth AN 1 MKAY
                NO WAI
                    result R I IZ count_stones YR PRODUKT OF stone AN 2024 AN YR DIFF OF depth AN 1 MKAY
            OIC
    OIC

    STONES_CACHE HAS A SRS key ITZ result
    FOUND YR result
IF U SAY SO

HOW IZ I iterate_stones YR stones AN YR iterations
    I HAS A total ITZ 0
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN stones'Z len
        I HAS A stone ITZ stones IZ get YR i MKAY
        total R SUM OF total AN I IZ count_stones YR stone AN YR iterations MKAY
    IM OUTTA YR loop
    FOUND YR total
IF U SAY SO

HOW IZ I part1 YR input
    FOUND YR I IZ iterate_stones YR input AN YR 25 MKAY
IF U SAY SO

HOW IZ I part2 YR input
    FOUND YR I IZ iterate_stones YR input AN YR 75 MKAY
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
