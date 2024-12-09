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

    HOW IZ I pop
        BOTH SAEM 0 AN ME'Z len, O RLY?, YA RLY
            FOUND YR NOOB
        OIC

        I HAS A value ITZ ME IZ get YR DIFF OF ME'Z len AN 1 MKAY
        ME'Z len R DIFF OF ME'Z len AN 1
        FOUND YR value
    IF U SAY SO

    HOW IZ I swap YR index1 AN YR index2
        I HAS A temp ITZ ME IZ get YR index1 MKAY
        ME IZ set YR index1 AN YR ME IZ get YR index2 MKAY MKAY
        ME IZ set YR index2 AN YR temp MKAY
    IF U SAY SO

    HOW IZ I insert YR at AN YR value
        ME IZ push YR value MKAY

        I HAS A index ITZ DIFF OF ME'Z len AN 1
        IM IN YR shift_loop NERFIN YR index TIL BOTH SAEM index AN at
            ME IZ swap YR index AN YR DIFF OF index AN 1 MKAY
        IM OUTTA YR shift_loop
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "["
        IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN ME'Z len
            output R SMOOSH output AN " " AN ME IZ get YR i MKAY
        IM OUTTA YR loop
        FOUND YR SMOOSH output AN " ]"
    IF U SAY SO
KTHX

O HAI IM Block
    I HAS A id ITZ A NUMBR
    I HAS A size ITZ A NUMBR
    I HAS A is_space ITZ A TROOF

    HOW IZ I new YR id AN YR size AN YR is_space
        O HAI IM result IM LIEK Block
            I HAS A id ITZ id
            I HAS A size ITZ size
            I HAS A is_space ITZ is_space
        KTHX
        FOUND YR result
    IF U SAY SO

    HOW IZ I to_string
        I HAS A output ITZ "Block ("
        output R SMOOSH output AN " id:: " AN ME'Z id
        output R SMOOSH output AN " size:: " AN ME'Z size
        output R SMOOSH output AN " is_space:: " AN ME'Z is_space
        output R SMOOSH output AN " )"
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

    I HAS A blocks ITZ List IZ new MKAY

    IM IN YR loop UPPIN YR i TIL EITHER OF BOTH SAEM i AN STRING IZ LEN YR content MKAY AN BOTH SAEM ":)" AN STRING IZ AT YR content AN YR i MKAY
        I HAS A size ITZ MAEK STRING IZ AT YR content AN YR i MKAY A NUMBR
        I HAS A id ITZ QUOSHUNT OF i AN 2  BTW id doesn't matter when `is_space` is WIN
        I HAS A size ITZ size
        I HAS A is_space ITZ DIFFRINT 0 AN MOD OF i AN 2
        I HAS A block ITZ Block IZ new YR id AN YR size AN YR is_space MKAY
        blocks IZ push YR block MKAY
    IM OUTTA YR loop

    FOUND YR blocks
IF U SAY SO

HOW IZ I calculate_checksum YR blocks
    I HAS A checksum ITZ 0

    I HAS A position ITZ 0
    IM IN YR checksum_loop UPPIN YR block_index TIL BOTH SAEM block_index AN blocks'Z len
        I HAS A block ITZ blocks IZ get YR block_index MKAY
        EITHER OF block'Z is_space AN block'Z used, O RLY?, YA RLY
            position R SUM OF position AN block'Z size
            SKIP DIS
        OIC

        IM IN YR loop UPPIN YR offset TIL BOTH SAEM offset AN block'Z size
            checksum R SUM OF checksum AN PRODUKT OF position AN block'Z id
            position R SUM OF position AN 1
        IM OUTTA YR loop
    IM OUTTA YR checksum_loop

    FOUND YR checksum
IF U SAY SO

HOW IZ I part1 YR original_input
    I HAS A new_blocks ITZ List IZ new MKAY

    I HAS A input ITZ List IZ new MKAY
    IM IN YR clone_loop UPPIN YR i TIL BOTH SAEM i AN original_input'Z len
        I HAS A block ITZ original_input IZ get YR i MKAY
        I HAS A block_clone ITZ Block IZ new YR block'Z id AN YR block'Z size AN YR block'Z is_space MKAY
        input IZ push YR block_clone MKAY
    IM OUTTA YR clone_loop

    IM IN YR compression_loop UPPIN YR block_index TIL BOTH SAEM block_index AN BIGGR OF block_index AN input'Z len
        I HAS A space_block ITZ input IZ get YR block_index MKAY
        NOT space_block'Z is_space, O RLY?, YA RLY
            new_blocks IZ push YR space_block MKAY
            SKIP DIS
        OIC

        IM IN YR fill_loop TIL BOTH SAEM 0 AN space_block'Z size
            I HAS A back_block ITZ input IZ pop MKAY
            back_block'Z is_space, O RLY?, YA RLY, SKIP DIS, OIC

            BOTH SAEM space_block'Z size AN BIGGR OF space_block'Z size AN back_block'Z size, O RLY?
                YA RLY  BTW space_block.size >= back_block.size
                    space_block'Z size R DIFF OF space_block'Z size AN back_block'Z size
                    new_blocks IZ push YR back_block MKAY
                NO WAI  BTW space_block.size <  back_block.size
                    I HAS A block ITZ Block IZ new YR back_block'Z id AN YR space_block'Z size AN YR FAIL MKAY
                    new_blocks IZ push YR block MKAY
                    back_block'Z size R DIFF OF back_block'Z size AN space_block'Z size
                    input IZ push YR back_block MKAY
                    GTFO
            OIC
        IM OUTTA YR fill_loop
    IM OUTTA YR compression_loop

    FOUND YR I IZ calculate_checksum YR new_blocks MKAY
IF U SAY SO

HOW IZ I find_suitable_space YR input AN YR block AN YR block_index
    I HAS A space_block_index ITZ 0
    IM IN YR space_block_search_loop UPPIN YR space_block_index TIL BOTH SAEM space_block_index AN block_index
        I HAS A space_block ITZ input IZ get YR space_block_index MKAY

        BTW skip this block if it's not a space block
        NOT space_block'Z is_space, O RLY?, YA RLY, SKIP DIS, OIC

        BTW it fits!
        BOTH SAEM space_block'Z size AN BIGGR OF space_block'Z size AN block'Z size, O RLY?, YA RLY
            FOUND YR space_block_index
        OIC
    IM OUTTA YR space_block_search_loop

    BTW no space block that fits
    FOUND YR NOOB
IF U SAY SO

HOW IZ I part2 YR input
    IM IN YR compression_loop UPPIN YR block_index_from_back TIL BOTH SAEM block_index_from_back AN input'Z len
        I HAS A block_index ITZ DIFF OF input'Z len AN SUM OF block_index_from_back AN 1
        I HAS A block ITZ input IZ get YR block_index MKAY
        block'Z is_space, O RLY?, YA RLY, SKIP DIS, OIC

        I HAS A space_block_index ITZ I IZ find_suitable_space YR input AN YR block AN YR block_index MKAY
        BOTH SAEM NOOB AN space_block_index, O RLY?, YA RLY, SKIP DIS, OIC

        I HAS A space_block ITZ input IZ get YR space_block_index MKAY
        BOTH SAEM block'Z size AN space_block'Z size, O RLY?
            YA RLY  BTW  block.size == space_block.size
                BTW replace the space block with the block
                space_block'Z id R block'Z id
                space_block'Z is_space R FAIL
            NO WAI  BTW  block.size <  space_block.size
                BTW insert the block before the space block, and resize the space block accordingly
                space_block'Z size R DIFF OF space_block'Z size AN block'Z size
                I HAS A new_block ITZ Block IZ new YR block'Z id AN YR block'Z size AN YR FAIL MKAY
                input IZ insert YR space_block_index AN YR new_block MKAY
        OIC

        BTW to make sure it won't get included in the checksum calculations
        block'Z is_space R WIN
    IM OUTTA YR compression_loop

    FOUND YR I IZ calculate_checksum YR input MKAY
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
