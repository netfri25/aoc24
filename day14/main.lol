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

    HOW IZ I mult YR t
        I HAS A res_x ITZ PRODUKT OF ME'Z x AN t
        I HAS A res_y ITZ PRODUKT OF ME'Z y AN t
        FOUND YR Pos IZ new YR res_x AN YR res_y MKAY
    IF U SAY SO

    HOW IZ I to_string
        FOUND YR SMOOSH ME'Z x AN "x" AN ME'Z y
    IF U SAY SO
KTHX

O HAI IM Robot
    I HAS A pos ITZ LIEK A Pos
    I HAS A vel ITZ LIEK A Pos

    HOW IZ I new YR pos AN YR vel
        O HAI IM result IM LIEK Robot
            I HAS A pos ITZ pos
            I HAS A vel ITZ vel
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I to_string
        I HAS A result ITZ List IZ new MKAY
        result IZ push YR ME'Z pos MKAY
        result IZ push YR ME'Z vel MKAY
        FOUND YR result IZ to_string MKAY
    IF U SAY SO
KTHX

HOW IZ I take YR str AN YR count
    FOUND YR STRING IZ SLICE YR str AN YR 0 AN YR count MKAY
IF U SAY SO

HOW IZ I drop YR str AN YR count
    FOUND YR STRING IZ SLICE YR str AN YR count AN YR STRING IZ LEN YR str MKAY MKAY
IF U SAY SO

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

    IM IN YR loop TIL BOTH SAEM 0 AN STRING IZ LEN YR content MKAY
        I HAS A newline_index ITZ I IZ index_of YR content AN YR ":)" MKAY
        I HAS A line ITZ I IZ take YR content AN YR newline_index MKAY
        content R I IZ drop YR content AN YR SUM OF newline_index AN 1 MKAY

        line R I IZ drop YR line AN YR 2 MKAY

        I HAS A space_index ITZ I IZ index_of YR line AN YR " " MKAY
        I HAS A first_point ITZ I IZ take YR line AN YR space_index MKAY
        I HAS A pos ITZ I IZ parse_point YR first_point MKAY

        I HAS A second_point ITZ I IZ drop YR line AN YR SUM OF 3 AN space_index MKAY
        I HAS A vel ITZ I IZ parse_point YR second_point MKAY

        I HAS A robot ITZ Robot IZ new YR pos AN YR vel MKAY
        output IZ push YR robot MKAY
    IM OUTTA YR loop

    FOUND YR output
IF U SAY SO

HOW IZ I parse_point YR str
    I HAS A comma_index ITZ I IZ index_of YR str AN YR ","
    I HAS A x_str ITZ I IZ take YR str AN YR comma_index MKAY
    I HAS A y_str ITZ I IZ drop YR str AN YR SUM OF 1 AN comma_index MKAY
    FOUND YR Pos IZ new YR MAEK x_str A NUMBR AN YR MAEK y_str A NUMBR MKAY
IF U SAY SO

I HAS A WIDTH ITZ 101
I HAS A HEIGHT ITZ 103

HOW IZ I simulate YR robot AN YR time
    robot'Z pos R robot'Z pos IZ add YR robot'Z vel IZ mult YR time MKAY MKAY
    robot'Z pos'Z x R MOD OF SUM OF WIDTH AN MOD OF robot'Z pos'Z x AN WIDTH AN WIDTH
    robot'Z pos'Z y R MOD OF SUM OF HEIGHT AN MOD OF robot'Z pos'Z y AN HEIGHT AN HEIGHT
IF U SAY SO

HOW IZ I count_quads YR robots
    I HAS A quadrents ITZ List IZ new MKAY
    quadrents IZ push YR 0 MKAY
    quadrents IZ push YR 0 MKAY
    quadrents IZ push YR 0 MKAY
    quadrents IZ push YR 0 MKAY

    I HAS A middle_x ITZ QUOSHUNT OF WIDTH AN 2
    I HAS A middle_y ITZ QUOSHUNT OF HEIGHT AN 2
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN robots'Z len
        I HAS A robot ITZ robots IZ get YR i MKAY
        I HAS A pos ITZ robot'Z pos
        EITHER OF  BOTH SAEM pos'Z x AN middle_x  AN  BOTH SAEM pos'Z y AN middle_y, O RLY?, YA RLY, SKIP DIS, OIC
        I HAS A quad_x ITZ QUOSHUNT OF pos'Z x AN SUM OF middle_x AN 1
        I HAS A quad_y ITZ QUOSHUNT OF pos'Z y AN SUM OF middle_y AN 1
        I HAS A index ITZ SUM OF quad_x AN PRODUKT OF 2 AN quad_y
        quadrents IZ set YR index AN YR SUM OF 1 AN quadrents IZ get YR index MKAY MKAY
    IM OUTTA YR loop

    FOUND YR quadrents
IF U SAY SO

HOW IZ I part1 YR input
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN input'Z len
        I HAS A robot ITZ input IZ get YR i MKAY
        I IZ simulate YR robot AN YR 100 MKAY
    IM OUTTA YR loop

    I HAS A quadrents ITZ I IZ count_quads YR input MKAY
    I HAS A total ITZ 1
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN quadrents'Z len
        total R PRODUKT OF total AN quadrents IZ get YR i MKAY
    IM OUTTA YR loop
    FOUND YR total
IF U SAY SO

HOW IZ I part2 YR input AN YR start_from
    I HAS A iteration ITZ start_from

    I HAS A stop ITZ FAIL
    IM IN YR finding_loop UPPIN YR iteration TIL stop
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN input'Z len
            I HAS A robot ITZ input IZ get YR i MKAY
            I IZ simulate YR robot AN YR 1 MKAY
        IM OUTTA YR loop

        I HAS A quads ITZ I IZ count_quads YR input MKAY
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN quads'Z len
            I HAS A quad ITZ quads IZ get YR i MKAY
            stop R EITHER OF stop AN BOTH SAEM quad AN BIGGR OF quad AN QUOSHUNT OF input'Z len AN 2
        IM OUTTA YR loop
    IM OUTTA YR finding_loop

    FOUND YR iteration
IF U SAY SO

HOW IZ I main
    I HAS A input ITZ I IZ read_input YR "input" MKAY
    NOT input, O RLY?, YA RLY
        FOUND YR NOOB
    OIC

    I HAS A sol
    sol R I IZ part1 YR input MKAY
    VISIBLE SMOOSH "part 1:: " AN sol
    sol R I IZ part2 YR input AN YR 100 MKAY
    VISIBLE SMOOSH "part 2:: " AN sol
IF U SAY SO

I IZ main MKAY
