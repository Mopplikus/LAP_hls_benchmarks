# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.

def print_all(line1, line2, line3, lines):
    print('DSP')
    print_command(2, line1, lines)
    print()
    print('FF')
    print_command(3, line1, lines)
    print()
    print('LUT')
    print_command(4, line1, lines)
    print()
    print('II')
    print_command(1, line2, lines)
    print()
    print('Runtime')
    print_command(1, line3, lines)
    print()
    print('Cycles')
    print_command(2, line3, lines)
    print()
    print('Fmax')
    print_command(4, line3, lines)

def print_command(slice, start_line, lines):
    dyn_c = ''
    viv_c = ''
    
    match slice:
        case 1:
            dyn_c = 'C'
            viv_c = 'B'
        case 2:
            dyn_c = 'G'
            viv_c = 'F'
        case 3:
            dyn_c = 'K'
            viv_c = 'J'
        case 4:
            dyn_c = 'O'
            viv_c = 'N'
    
    out = 'AVERAGEA('
    
    for i in range(start_line, start_line + lines):
        out += 'SI(OU('
        out += dyn_c
        out += str(i)
        out += '=0;'
        out += viv_c
        out += str(i)
        out += '=0);0;('
        out += dyn_c
        out += str(i)
        out += '+0,001)/('
        out += viv_c
        out += str(i)
        out += '+0,001))'
        if(i < start_line + lines - 1):
            out += ';'

    out += ')'
    print(out)


print_all(67, 73, 79, 3)