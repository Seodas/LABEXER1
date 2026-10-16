section .data
    menu_text db 10, "------------------------------", 10
              db "MENU", 10
              db "[A]dd", 10
              db "[S]ubtract", 10
              db "[M]ultiply", 10
              db "[D]ivide", 10
              db "------------------------------", 10, 0

    choice_prompt db "Enter your choice: ", 0
    first_prompt  db "Enter first number: ", 0
    second_prompt db "Enter second number: ", 0
    retry_prompt  db 10, "Do you want to try again? (Y/N): ", 0

    invalid_msg db "Invalid choice. Please choose A, S, M, or D.", 10, 0
    goodbye_msg db "Program terminated.", 10, 0
    div_zero_msg db "Cannot divide by zero.", 10, 0

    sum_msg      db "The sum is %d", 10, 0
    difference_msg db "The difference is %d", 10, 0
    product_msg  db "The product is %d", 10, 0
    division_msg db "The quotient is %d and the remainder is %d", 10, 0

    fmt_char db " %c", 0
    fmt_int  db "%d", 0

    clear_code db 27, "[2J", 27, "[H", 0

section .bss
    choice       resb 1
    retry_choice resb 1
    num1         resd 1
    num2         resd 1
    result       resd 1
    quotient     resd 1
    remainder    resd 1

section .text
    global main
    extern printf
    extern scanf

main:
.menu:
    call print_menu

    ; Print the choice prompt
    sub esp, 8
    push dword choice_prompt
    call printf
    add esp, 12

    ; Read one menu character
    sub esp, 4
    push dword choice
    push dword fmt_char
    call scanf
    add esp, 12

    mov al, [choice]

    cmp al, 'A'
    je .do_add
    cmp al, 'a'
    je .do_add

    cmp al, 'S'
    je .do_subtract
    cmp al, 's'
    je .do_subtract

    cmp al, 'M'
    je .do_multiply
    cmp al, 'm'
    je .do_multiply

    cmp al, 'D'
    je .do_divide
    cmp al, 'd'
    je .do_divide

    jmp .invalid_choice

.do_add:
    call read_numbers
    call add_numbers
    jmp .ask_again

.do_subtract:
    call read_numbers
    call subtract_numbers
    jmp .ask_again

.do_multiply:
    call read_numbers
    call multiply_numbers
    jmp .ask_again

.do_divide:
    call read_numbers
    call divide_numbers
    jmp .ask_again

.invalid_choice:
    sub esp, 8
    push dword invalid_msg
    call printf
    add esp, 12
    jmp .menu

.ask_again:
    call ask_retry

    mov al, [retry_choice]
    cmp al, 'Y'
    je .restart
    cmp al, 'y'
    je .restart

    ; Any response other than Y ends the program
    sub esp, 8
    push dword goodbye_msg
    call printf
    add esp, 12

    xor eax, eax
    ret

.restart:
    call clear_screen
    jmp .menu


; Displays the operation menu
print_menu:
    sub esp, 4
    push dword menu_text
    call printf
    add esp, 8
    ret


; Reads the two integer inputs
read_numbers:
    sub esp, 4
    push dword first_prompt
    call printf
    add esp, 8

    push dword num1
    push dword fmt_int
    call scanf
    add esp, 8

    sub esp, 4
    push dword second_prompt
    call printf
    add esp, 8

    push dword num2
    push dword fmt_int
    call scanf
    add esp, 8

    ret


; Adds the two numbers and displays the result
add_numbers:
    mov eax, [num1]
    add eax, [num2]
    mov [result], eax

    push dword [result]
    push dword sum_msg
    call printf
    add esp, 8
    ret


; Subtracts the second number from the first
subtract_numbers:
    mov eax, [num1]
    sub eax, [num2]
    mov [result], eax

    push dword [result]
    push dword difference_msg
    call printf
    add esp, 8
    ret


; Multiplies the two numbers
multiply_numbers:
    mov eax, [num1]
    imul eax, dword [num2]
    mov [result], eax

    push dword [result]
    push dword product_msg
    call printf
    add esp, 8
    ret


; Divides the first number by the second
divide_numbers:
    cmp dword [num2], 0
    je .division_by_zero

    mov eax, [num1]
    cdq
    idiv dword [num2]

    mov [quotient], eax
    mov [remainder], edx

    sub esp, 12
    push dword [remainder]
    push dword [quotient]
    push dword division_msg
    call printf
    add esp, 24
    ret

.division_by_zero:
    sub esp, 4
    push dword div_zero_msg
    call printf
    add esp, 8
    ret


; Asks whether the user wants another operation
ask_retry:
    sub esp, 4
    push dword retry_prompt
    call printf
    add esp, 8

    push dword retry_choice
    push dword fmt_char
    call scanf
    add esp, 8
    ret


; Clears the terminal before showing the menu again
clear_screen:
    sub esp, 4
    push dword clear_code
    call printf
    add esp, 8
    ret