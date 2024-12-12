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

    HOW IZ I to_string
        FOUND YR SMOOSH ME'Z x AN "x" AN ME'Z y
    IF U SAY SO
KTHX

O HAI IM Map
    I HAS A keys ITZ NOOB  BTW List K

    HOW IZ I new
        O HAI IM result IM LIEK Map
            I HAS A keys ITZ List IZ new MKAY
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I get YR key
        FOUND YR ME'Z SRS key
    IF U SAY SO

    HOW IZ I insert YR key AN YR value
        NOT ME IZ get YR key MKAY, O RLY?
            YA RLY
                ME HAS A SRS key ITZ value
                ME'Z keys IZ push YR key MKAY
            NO WAI
                ME'Z SRS key R value
        OIC
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "{:)"
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z keys'Z len
            I HAS A key ITZ ME'Z keys IZ get YR i MKAY
            I HAS A value ITZ ME IZ get YR key MKAY
            output R SMOOSH output AN "  " AN key AN " " AN value AN ":)"
        IM OUTTA YR loop
        output R SMOOSH output AN "}"
        FOUND YR output
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

    I HAS A kinds ITZ Map IZ new MKAY

    IM IN YR loop UPPIN YR row TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        I HAS A newline_index ITZ I IZ index_of YR content AN YR ":)" MKAY
        I HAS A line ITZ STRING IZ SLICE YR content AN YR 0 AN YR newline_index MKAY
        content R STRING IZ SLICE YR content AN YR SUM OF newline_index AN 1 AN YR STRING IZ LEN YR content MKAY MKAY
        IM IN YR line_loop UPPIN YR col TIL BOTH SAEM col AN STRING IZ LEN YR line MKAY
            I HAS A kind ITZ STRING IZ AT YR line AN YR col MKAY
            I HAS A pos ITZ Pos IZ new YR col AN YR row MKAY
            kinds IZ insert YR pos AN YR kind MKAY
        IM OUTTA YR line_loop
    IM OUTTA YR loop

    FOUND YR kinds
IF U SAY SO

I HAS A DIRS ITZ List IZ new MKAY
DIRS IZ push YR Pos IZ new YR -1 AN YR  0 MKAY MKAY
DIRS IZ push YR Pos IZ new YR  0 AN YR  1 MKAY MKAY
DIRS IZ push YR Pos IZ new YR  1 AN YR  0 MKAY MKAY
DIRS IZ push YR Pos IZ new YR  0 AN YR -1 MKAY MKAY

HOW IZ I perimeter YR input AN YR pos AN YR visited
    visited IZ get YR pos MKAY, O RLY?, YA RLY
        FOUND YR 0
    OIC

    visited IZ insert YR pos AN YR WIN MKAY

    I HAS A total ITZ 0
    I HAS A kind ITZ input IZ get YR pos MKAY

    IM IN YR dir_loop UPPIN YR dir TIL BOTH SAEM dir AN DIRS'Z len
        I HAS A off ITZ DIRS IZ get YR dir MKAY
        I HAS A next_pos ITZ pos IZ add YR off MKAY
        I HAS A next_kind ITZ input IZ get YR next_pos MKAY
        BOTH SAEM next_kind AN kind, O RLY?
            YA RLY
                total R SUM OF total AN I IZ perimeter YR input AN YR next_pos AN YR visited MKAY
            NO WAI
                total R SUM OF total AN 1
        OIC
    IM OUTTA YR dir_loop

    FOUND YR total
IF U SAY SO

HOW IZ I area YR input AN YR pos AN YR visited
    visited IZ get YR pos MKAY, O RLY?, YA RLY
        FOUND YR 0
    OIC

    I HAS A total ITZ 1
    visited IZ insert YR pos AN YR WIN MKAY

    I HAS A kind ITZ input IZ get YR pos MKAY

    IM IN YR dir_loop UPPIN YR dir TIL BOTH SAEM dir AN DIRS'Z len
        I HAS A off ITZ DIRS IZ get YR dir MKAY
        I HAS A next_pos ITZ pos IZ add YR off MKAY
        I HAS A next_kind ITZ input IZ get YR next_pos MKAY
        BOTH SAEM next_kind AN kind, O RLY?, YA RLY
            total R SUM OF total AN I IZ area YR input AN YR next_pos AN YR visited MKAY
        OIC
    IM OUTTA YR dir_loop

    FOUND YR total
IF U SAY SO

HOW IZ I part1 YR input
    I HAS A total ITZ 0

    I HAS A area_visited ITZ Map IZ new MKAY
    I HAS A perimeter_visited ITZ Map IZ new MKAY
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN input'Z keys'Z len
        I HAS A pos ITZ input'Z keys IZ get YR i MKAY
        area_visited IZ get YR pos MKAY, O RLY?, YA RLY, SKIP DIS, OIC
        I HAS A kind ITZ input IZ get YR pos MKAY

        I HAS A a ITZ I IZ area YR input AN YR pos AN YR area_visited MKAY
        I HAS A p ITZ I IZ perimeter YR input AN YR pos AN YR perimeter_visited MKAY
        I HAS A cost ITZ PRODUKT OF a AN p
        total R SUM OF total AN cost
    IM OUTTA YR loop

    FOUND YR total
IF U SAY SO

HOW IZ I flood YR input AN YR pos AN YR visited
    visited IZ get YR pos MKAY, O RLY?, YA RLY
        FOUND YR NOOB
    OIC

    visited IZ insert YR pos AN YR WIN MKAY

    I HAS A kind ITZ input IZ get YR pos MKAY

    IM IN YR dir_loop UPPIN YR dir TIL BOTH SAEM dir AN DIRS'Z len
        I HAS A off ITZ DIRS IZ get YR dir MKAY
        I HAS A next_pos ITZ pos IZ add YR off MKAY
        I HAS A next_kind ITZ input IZ get YR next_pos MKAY
        BOTH SAEM next_kind AN kind, O RLY?, YA RLY
            I IZ flood YR input AN YR next_pos AN YR visited MKAY
        OIC
    IM OUTTA YR dir_loop
IF U SAY SO

HOW IZ I count_corners YR pos AN YR seen
    I HAS A corners ITZ 0
    IM IN YR dir_loop UPPIN YR dir1 TIL BOTH SAEM dir1 AN DIRS'Z len
        I HAS A off1 ITZ DIRS IZ get YR dir1 MKAY
        I HAS A adj_pos1 ITZ pos IZ add YR off1 MKAY
        I HAS A adj1 ITZ seen IZ get YR adj_pos1 MKAY

        I HAS A dir2 ITZ MOD OF SUM OF 1 AN dir1 AN 4
        I HAS A off2 ITZ DIRS IZ get YR dir2 MKAY
        I HAS A adj_pos2 ITZ pos IZ add YR off2 MKAY
        I HAS A adj2 ITZ seen IZ get YR adj_pos2 MKAY

        I HAS A corner_off ITZ off1 IZ add YR off2 MKAY
        I HAS A corner_pos ITZ pos IZ add YR corner_off MKAY
        I HAS A corner ITZ seen IZ get YR corner_pos MKAY

        I HAS A concave ITZ BOTH OF NOT corner AN BOTH OF adj1 AN adj2
        I HAS A convex ITZ BOTH OF NOT adj1 AN NOT adj2
        EITHER OF concave AN convex, O RLY?, YA RLY
            corners R SUM OF 1 AN corners
        OIC
    IM OUTTA YR dir_loop

    FOUND YR corners
IF U SAY SO

HOW IZ I part2 YR input
    I HAS A total ITZ 0

    I HAS A area_visited ITZ Map IZ new MKAY
    I HAS A counted_corners ITZ Map IZ new MKAY
    IM IN YR loop UPPIN YR index TIL BOTH SAEM index AN input'Z keys'Z len
        I HAS A pos ITZ input'Z keys IZ get YR index MKAY
        area_visited IZ get YR pos MKAY, O RLY?, YA RLY, SKIP DIS, OIC
        I HAS A kind ITZ input IZ get YR pos MKAY

        I HAS A region ITZ Map IZ new MKAY
        I IZ flood YR input AN YR pos AN YR region MKAY
        I HAS A sides ITZ 0
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN region'Z keys'Z len
            I HAS A this_pos ITZ region'Z keys IZ get YR i MKAY
            I HAS A corners ITZ I IZ count_corners YR this_pos AN YR region MKAY
            sides R SUM OF sides AN corners
        IM OUTTA YR loop

        I HAS A a ITZ I IZ area YR input AN YR pos AN YR area_visited MKAY
        I HAS A cost ITZ PRODUKT OF a AN sides
        total R SUM OF total AN cost
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
