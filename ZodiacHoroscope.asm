section .data
    welcome db 10, "=======================================", 10
            db "       THE MYSTIC ZODIAC ORACLE", 10
            db "=======================================", 10
            db "          DISCOVER YOUR DESTINY!", 10
            db "=======================================", 10, 0

    ask_name db "Enter your name: ", 0
    ask_month db "Enter birth month (1-12): ", 0
    ask_day db "Enter birth day (1-31): ", 0

    hello db 10, "Welcome, ", 0
    zodiac_title db 10, "Your Zodiac Information", 10, 0
    sign_label db "Zodiac Sign: ", 0
    element_label db "Element: ", 0
    symbol_label db "Symbol: ", 0
    personality_label db "Personality: ", 0

   menu db 10, "[1] Love and Relationships       ", 27, "[35m", "/\_/\ ", 27, "[0m", 10
     db "[2] Career and Studies          ", 27, "[35m", "( o.o )", 27, "[0m", 10
     db "[3] Health and Wellness          ", 27, "[35m", "> ^ <", 27, "[0m", 10
     db "[4] Lucky Number and Color", 10
     db "[5] View Zodiac Information", 10
     db "[6] Exit", 10
     db "Enter your choice: ", 0

    invalid_choice db 10, "Invalid selection. Try again.", 10, 0
    invalid_date db 10, "Invalid birth date.", 10, 0

    love_msg db 10, "LOVE HOROSCOPE", 10
             db "Your relationships will become stronger today.", 10, 0

    career_msg db 10, "CAREER HOROSCOPE", 10
               db "Your creativity will help you solve a difficult problem.", 10, 0

    health_msg db 10, "HEALTH HOROSCOPE", 10
              db "Take time to rest and take care of yourself.", 10, 0

    lucky_msg db 10, "LUCKY INFORMATION", 10
              db "Lucky Number: 7", 10
              db "Lucky Color: Blue", 10, 0

    goodbye db 10, "Goodbye!", 10, 0

    art_capricorn db 27, "[33m"
              db 10, "       /\     /\", 10
              db "      /  \___/  \", 10
              db "     /     _     \", 10
              db "    (_____/ \_____) ", 10
              db 27, "[0m", 0

art_aquarius db 27, "[36m"
             db 10, "       ~~~~~~~~", 10
             db "      ~~~~~~~~~~", 10
             db "       ~~~~~~~~", 10
             db "      ~~~~~~~~~~", 10
             db 27, "[0m", 0

art_pisces db 27, "[34m"
           db 10, "       ><(((('>", 10
           db "      <'))))><", 10
           db 27, "[0m", 0

art_aries db 27, "[31m"
          db 10, "       /\     /\", 10
          db "      /  \___/  \", 10
          db "     (    o o    )", 10
          db "      \    ^    /", 10
          db 27, "[0m", 0

art_taurus db 27, "[32m"
           db 10, "       /\     /\", 10
           db "      /  \___/  \", 10
           db "     (   |o o|   )", 10
           db "      \   \_/   /", 10
           db 27, "[0m", 0

art_gemini db 27, "[35m"
           db 10, "       O       O", 10
           db "      /|\     /|\", 10
           db "      / \     / \", 10
           db "      TWINS", 10
           db 27, "[0m", 0

art_cancer db 27, "[34m"
           db 10, "       .--. .--.", 10
           db "      (    V    )", 10
           db "       \       /", 10
           db "        `-----`", 10
           db 27, "[0m", 0

art_leo db 27, "[33m"
        db 10, "       / \__/", 10
        db "      (    @\___", 10
        db "      /         O", 10
        db "     /   (_____/", 10
        db 27, "[0m", 0

art_virgo db 27, "[32m"
          db 10, "        .-.", 10
          db "       (   )", 10
          db "        | |", 10
          db "       /   \", 10
          db "      VIRGO", 10
          db 27, "[0m", 0

art_libra db 27, "[36m"
          db 10, "          |", 10
          db "      ----+----", 10
          db "       \  |  /", 10
          db "        \ | /", 10
          db "         \|/", 10
          db 27, "[0m", 0

art_scorpio db 27, "[31m"
            db 10, "      /\/\____", 10
            db "     /        \__", 10
            db "    (  SCORPION  )", 10
            db "     \____/\__/^", 10
            db 27, "[0m", 0

art_sagittarius db 27, "[35m"
                db 10, "          /\", 10
                db "         /  \", 10
                db "    ----->", 10
                db "         \  /", 10
                db "          \/", 10
                db 27, "[0m", 0

    sign_capricorn db "CAPRICORN", 10, 0
    sign_aquarius db "AQUARIUS", 10, 0
    sign_pisces db "PISCES", 10, 0
    sign_aries db "ARIES", 10, 0
    sign_taurus db "TAURUS", 10, 0
    sign_gemini db "GEMINI", 10, 0
    sign_cancer db "CANCER", 10, 0
    sign_leo db "LEO", 10, 0
    sign_virgo db "VIRGO", 10, 0
    sign_libra db "LIBRA", 10, 0
    sign_scorpio db "SCORPIO", 10, 0
    sign_sagittarius db "SAGITTARIUS", 10, 0

    element_earth db "Earth", 10, 0
    element_air db "Air", 10, 0
    element_water db "Water", 10, 0
    element_fire db "Fire", 10, 0

    symbol_goat db "Goat", 10, 0
    symbol_water_bearer db "Water Bearer", 10, 0
    symbol_fish db "Fish", 10, 0
    symbol_ram db "Ram", 10, 0
    symbol_bull db "Bull", 10, 0
    symbol_twins db "Twins", 10, 0
    symbol_crab db "Crab", 10, 0
    symbol_lion db "Lion", 10, 0
    symbol_maiden db "Maiden", 10, 0
    symbol_scales db "Scales", 10, 0
    symbol_scorpion db "Scorpion", 10, 0
    symbol_archer db "Archer", 10, 0

    personality_capricorn db "Responsible and hardworking.", 10, 0
    personality_aquarius db "Independent and imaginative.", 10, 0
    personality_pisces db "Kind and creative.", 10, 0
    personality_aries db "Confident and courageous.", 10, 0
    personality_taurus db "Patient and dependable.", 10, 0
    personality_gemini db "Curious and adaptable.", 10, 0
    personality_cancer db "Caring and protective.", 10, 0
    personality_leo db "Confident, creative, and courageous.", 10, 0
    personality_virgo db "Organized and intelligent.", 10, 0
    personality_libra db "Fair and peaceful.", 10, 0
    personality_scorpio db "Determined and passionate.", 10, 0
    personality_sagittarius db "Adventurous and optimistic.", 10, 0

section .bss
    name_buffer resb 50
    input_buffer resb 16
    month_value resd 1
    day_value resd 1
    name_length resd 1
    sign_pointer resd 1
    element_pointer resd 1
    symbol_pointer resd 1
    personality_pointer resd 1
    art_pointer resd 1

section .text
    global _start

_start:
    call display_welcome
    call get_name
    call get_month
    call get_day
    call validate_date
    call determine_zodiac
    call display_zodiac
    call horoscope_menu
    call exit_program

display_welcome:
    mov ecx, welcome
    call print_string
    ret

get_name:
    mov ecx, ask_name
    call print_string

    mov eax, 3
    mov ebx, 0
    mov ecx, name_buffer
    mov edx, 50
    int 0x80

    mov [name_length], eax

    mov ecx, hello
    call print_string

    mov eax, 4
    mov ebx, 1
    mov ecx, name_buffer
    mov edx, [name_length]
    int 0x80

    ret

get_month:
    mov ecx, ask_month
    call print_string

    call read_number
    mov [month_value], eax
    ret

get_day:
    mov ecx, ask_day
    call print_string

    call read_number
    mov [day_value], eax
    ret

validate_date:
    mov eax, [month_value]

    cmp eax, 1
    jl invalid_date_input

    cmp eax, 12
    jg invalid_date_input

    mov eax, [day_value]

    cmp eax, 1
    jl invalid_date_input

    cmp eax, 31
    jg invalid_date_input

    mov eax, [month_value]

    cmp eax, 2
    je validate_february

    cmp eax, 4
    je validate_thirty_day_month

    cmp eax, 6
    je validate_thirty_day_month

    cmp eax, 9
    je validate_thirty_day_month

    cmp eax, 11
    je validate_thirty_day_month

    ret

validate_february:
    mov eax, [day_value]

    cmp eax, 28
    jg invalid_date_input

    ret

validate_thirty_day_month:
    mov eax, [day_value]

    cmp eax, 30
    jg invalid_date_input

    ret

invalid_date_input:
    mov ecx, invalid_date
    call print_string
    jmp exit_program

determine_zodiac:
    mov eax, [month_value]

    cmp eax, 1
    je january

    cmp eax, 2
    je february

    cmp eax, 3
    je march

    cmp eax, 4
    je april

    cmp eax, 5
    je may

    cmp eax, 6
    je june

    cmp eax, 7
    je july

    cmp eax, 8
    je august

    cmp eax, 9
    je september

    cmp eax, 10
    je october

    cmp eax, 11
    je november

    cmp eax, 12
    je december

january:
    mov eax, [day_value]
    cmp eax, 19
    jle choose_capricorn
    jmp choose_aquarius

february:
    mov eax, [day_value]
    cmp eax, 18
    jle choose_aquarius
    jmp choose_pisces

march:
    mov eax, [day_value]
    cmp eax, 20
    jle choose_pisces
    jmp choose_aries

april:
    mov eax, [day_value]
    cmp eax, 19
    jle choose_aries
    jmp choose_taurus

may:
    mov eax, [day_value]
    cmp eax, 20
    jle choose_taurus
    jmp choose_gemini

june:
    mov eax, [day_value]
    cmp eax, 20
    jle choose_gemini
    jmp choose_cancer

july:
    mov eax, [day_value]
    cmp eax, 22
    jle choose_cancer
    jmp choose_leo

august:
    mov eax, [day_value]
    cmp eax, 22
    jle choose_leo
    jmp choose_virgo

september:
    mov eax, [day_value]
    cmp eax, 22
    jle choose_virgo
    jmp choose_libra

october:
    mov eax, [day_value]
    cmp eax, 22
    jle choose_libra
    jmp choose_scorpio

november:
    mov eax, [day_value]
    cmp eax, 21
    jle choose_scorpio
    jmp choose_sagittarius

december:
    mov eax, [day_value]
    cmp eax, 21
    jle choose_sagittarius
    jmp choose_capricorn

choose_capricorn:
    mov dword [sign_pointer], sign_capricorn
    mov dword [element_pointer], element_earth
    mov dword [symbol_pointer], symbol_goat
    mov dword [personality_pointer], personality_capricorn
    mov dword [art_pointer], art_capricorn
    ret

choose_aquarius:
    mov dword [sign_pointer], sign_aquarius
    mov dword [element_pointer], element_air
    mov dword [symbol_pointer], symbol_water_bearer
    mov dword [personality_pointer], personality_aquarius
    mov dword [art_pointer], art_aquarius
    ret

choose_pisces:
    mov dword [sign_pointer], sign_pisces
    mov dword [element_pointer], element_water
    mov dword [symbol_pointer], symbol_fish
    mov dword [personality_pointer], personality_pisces
    mov dword [art_pointer], art_pisces
    ret

choose_aries:
    mov dword [sign_pointer], sign_aries
    mov dword [element_pointer], element_fire
    mov dword [symbol_pointer], symbol_ram
    mov dword [personality_pointer], personality_aries
    mov dword [art_pointer], art_aries
    ret

choose_taurus:
    mov dword [sign_pointer], sign_taurus
    mov dword [element_pointer], element_earth
    mov dword [symbol_pointer], symbol_bull
    mov dword [personality_pointer], personality_taurus
    mov dword [art_pointer], art_taurus
    ret

choose_gemini:
    mov dword [sign_pointer], sign_gemini
    mov dword [element_pointer], element_air
    mov dword [symbol_pointer], symbol_twins
    mov dword [personality_pointer], personality_gemini
    mov dword [art_pointer], art_gemini
    ret

choose_cancer:
    mov dword [sign_pointer], sign_cancer
    mov dword [element_pointer], element_water
    mov dword [symbol_pointer], symbol_crab
    mov dword [personality_pointer], personality_cancer
    mov dword [art_pointer], art_cancer
    ret

choose_leo:
    mov dword [sign_pointer], sign_leo
    mov dword [element_pointer], element_fire
    mov dword [symbol_pointer], symbol_lion
    mov dword [personality_pointer], personality_leo
    mov dword [art_pointer], art_leo
    ret

choose_virgo:
    mov dword [sign_pointer], sign_virgo
    mov dword [element_pointer], element_earth
    mov dword [symbol_pointer], symbol_maiden
    mov dword [personality_pointer], personality_virgo
    mov dword [art_pointer], art_virgo
    ret

choose_libra:
    mov dword [sign_pointer], sign_libra
    mov dword [element_pointer], element_air
    mov dword [symbol_pointer], symbol_scales
    mov dword [personality_pointer], personality_libra
    mov dword [art_pointer], art_libra
    ret

choose_scorpio:
    mov dword [sign_pointer], sign_scorpio
    mov dword [element_pointer], element_water
    mov dword [symbol_pointer], symbol_scorpion
    mov dword [personality_pointer], personality_scorpio
    mov dword [art_pointer], art_scorpio
    ret

choose_sagittarius:
    mov dword [sign_pointer], sign_sagittarius
    mov dword [element_pointer], element_fire
    mov dword [symbol_pointer], symbol_archer
    mov dword [personality_pointer], personality_sagittarius
    mov dword [art_pointer], art_sagittarius
    ret

display_zodiac:
    mov ecx, art_pointer
    mov ecx, [ecx]
    call print_string

    mov ecx, zodiac_title
    call print_string

    mov ecx, sign_label
    call print_string

    mov ecx, [sign_pointer]
    call print_string

    mov ecx, element_label
    call print_string

    mov ecx, [element_pointer]
    call print_string

    mov ecx, symbol_label
    call print_string

    mov ecx, [symbol_pointer]
    call print_string

    mov ecx, personality_label
    call print_string

    mov ecx, [personality_pointer]
    call print_string

    ret

horoscope_menu:
menu_loop:
    mov ecx, menu
    call print_string

    call read_number

    cmp eax, 1
    je love_horoscope

    cmp eax, 2
    je career_horoscope

    cmp eax, 3
    je health_horoscope

    cmp eax, 4
    je lucky_information

    cmp eax, 5
    je display_zodiac_again

    cmp eax, 6
    je exit_program

    mov ecx, invalid_choice
    call print_string
    jmp menu_loop

love_horoscope:
    mov ecx, love_msg
    call print_string
    jmp menu_loop

career_horoscope:
    mov ecx, career_msg
    call print_string
    jmp menu_loop

health_horoscope:
    mov ecx, health_msg
    call print_string
    jmp menu_loop

lucky_information:
    mov ecx, lucky_msg
    call print_string
    jmp menu_loop

display_zodiac_again:
    call display_zodiac
    jmp menu_loop

print_string:
    mov edx, ecx

find_length:
    cmp byte [edx], 0
    je write_string

    inc edx
    jmp find_length

write_string:
    sub edx, ecx

    mov eax, 4
    mov ebx, 1
    int 0x80

    ret

read_number:
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 16
    int 0x80

    mov edi, eax
    mov esi, input_buffer
    xor eax, eax

convert_loop:
    cmp edi, 0
    je conversion_done

    movzx edx, byte [esi]
    inc esi
    dec edi

    cmp dl, 10
    je conversion_done

    cmp dl, '0'
    jb convert_loop

    cmp dl, '9'
    ja convert_loop

    imul eax, 10
    sub edx, '0'
    add eax, edx

    jmp convert_loop

conversion_done:
    ret

exit_program:
    mov ecx, goodbye
    call print_string

    mov eax, 1
    mov ebx, 0
    int 0x80