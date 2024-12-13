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

O HAI IM Machine
    I HAS A a ITZ LIEK A Pos      BTW offset
    I HAS A b ITZ LIEK A Pos      BTW offset
    I HAS A prize ITZ LIEK A Pos  BTW position

    HOW IZ I new YR a AN YR b AN YR prize
        O HAI IM result IM LIEK Machine
            I HAS A a ITZ a
            I HAS A b ITZ b
            I HAS A prize ITZ prize
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I to_string
        BTW too lazy lmfao
        I HAS A output ITZ List IZ new MKAY
        output IZ push YR ME'Z a
        output IZ push YR ME'Z b
        output IZ push YR ME'Z prize
        FOUND YR output IZ to_string MKAY
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
        BOTH SAEM 0 AN STRING IZ LEN YR line MKAY, O RLY?, YA RLY, SKIP DIS, OIC
        I HAS A button_a ITZ I IZ parse_button YR line MKAY

        I HAS A newline_index ITZ I IZ index_of YR content AN YR ":)" MKAY
        I HAS A line ITZ I IZ take YR content AN YR newline_index MKAY
        content R I IZ drop YR content AN YR SUM OF newline_index AN 1 MKAY
        I HAS A button_b ITZ I IZ parse_button YR line MKAY

        I HAS A newline_index ITZ I IZ index_of YR content AN YR ":)" MKAY
        I HAS A line ITZ I IZ take YR content AN YR newline_index MKAY
        content R I IZ drop YR content AN YR SUM OF newline_index AN 1 MKAY
        I HAS A prize ITZ I IZ parse_prize YR line MKAY

        I HAS A machine ITZ Machine IZ new YR button_a AN YR button_b AN YR prize MKAY
        output IZ push YR machine MKAY
    IM OUTTA YR loop

    FOUND YR output
IF U SAY SO

HOW IZ I parse_button YR line
    line R I IZ drop YR line AN YR 12 MKAY
    I HAS A comma_index ITZ I IZ index_of YR line AN YR "," MKAY
    I HAS A x_str ITZ I IZ take YR line AN YR comma_index MKAY
    I HAS A y_str ITZ I IZ drop YR line AN YR SUM OF comma_index AN 4 MKAY
    I HAS A x ITZ MAEK x_str A NUMBR
    I HAS A y ITZ MAEK y_str A NUMBR
    FOUND YR Pos IZ new YR x AN YR y
IF U SAY SO

HOW IZ I parse_prize YR line
    line R I IZ drop YR line AN YR 9 MKAY
    I HAS A comma_index ITZ I IZ index_of YR line AN YR "," MKAY
    I HAS A x_str ITZ I IZ take YR line AN YR comma_index MKAY
    I HAS A y_str ITZ I IZ drop YR line AN YR SUM OF comma_index AN 4 MKAY
    I HAS A x ITZ MAEK x_str A NUMBR
    I HAS A y ITZ MAEK y_str A NUMBR
    FOUND YR Pos IZ new YR x AN YR y MKAY
IF U SAY SO

HOW IZ I is_negative YR value
    FOUND YR BOTH OF DIFFRINT 0 AN value AN BOTH SAEM 0 AN BIGGR OF 0 AN value
IF U SAY SO

I HAS A A_COST ITZ 3
I HAS A B_COST ITZ 1

HOW IZ I minimum_tokens YR machine
    BTW  A*a.x + B*b.x = prize.x
    BTW  A*a.y + B*b.y = prize.y

    BTW  A = (b.y*prize.x - b.x*prize.y) / (a.x*b.y - b.x*a.y)
    BTW  B = (a.x*prize.y - a.y*prize.x) / (a.x*b.y - b.x*a.y)

    I HAS A denom ITZ DIFF OF  PRODUKT OF machine'Z a'Z x AN machine'Z b'Z y  AN  PRODUKT OF machine'Z b'Z x AN machine'Z a'Z y
    I HAS A a_num ITZ DIFF OF  PRODUKT OF machine'Z b'Z y AN machine'Z prize'Z x  AN  PRODUKT OF machine'Z b'Z x AN machine'Z prize'Z y
    I HAS A b_num ITZ DIFF OF  PRODUKT OF machine'Z a'Z x AN machine'Z prize'Z y  AN  PRODUKT OF machine'Z a'Z y AN machine'Z prize'Z x

    DIFFRINT 0 AN BIGGR OF  MOD OF a_num AN denom  AN  MOD OF b_num AN denom, O RLY?, YA RLY
        FOUND YR 0
    OIC

    I HAS A a ITZ QUOSHUNT OF a_num AN denom
    I HAS A b ITZ QUOSHUNT OF b_num AN denom
    EITHER OF  I IZ is_negative YR a MKAY  AN  I IZ is_negative YR b MKAY, O RLY?, YA RLY
        FOUND YR 0
    OIC

    I HAS A a_cost ITZ PRODUKT OF a AN A_COST
    I HAS A b_cost ITZ PRODUKT OF b AN B_COST
    FOUND YR SUM OF a_cost AN b_cost
IF U SAY SO

HOW IZ I part1 YR input
    I HAS A total ITZ 0

    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN input'Z len
        I HAS A machine ITZ input IZ get YR i MKAY
        I HAS A tokens ITZ I IZ minimum_tokens YR machine MKAY
        total R SUM OF total AN tokens
    IM OUTTA YR loop

    FOUND YR total
IF U SAY SO

I HAS A OFF ITZ 10000000000000

HOW IZ I part2 YR input
    IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN input'Z len
        I HAS A machine ITZ input IZ get YR i MKAY
        machine'Z prize'Z x R SUM OF OFF AN machine'Z prize'Z x
        machine'Z prize'Z y R SUM OF OFF AN machine'Z prize'Z y
    IM OUTTA YR loop

    FOUND YR I IZ part1 YR input MKAY
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
