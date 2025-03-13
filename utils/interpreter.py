import sys
import os

usage = """
usage: ./interpreter.py [asm|c|py] [file]
"""

def print_usage():
    print(usage, file=sys.stderr)

if __name__ == "__main__":
    if not sys.argv[1:] != 2 or sys.argv[1] not in ['c', 'asm', 'py']:
        print_usage()
        sys.exit(1)

    type = sys.argv[1]
    src = sys.argv[2]
    with open(src, "r") as baba:
        file = baba.read()
        if type == 'c':
            out = file.replace("\n","%1$c").replace("\"","%2$c").replace("@","%3$s").replace("i = 5","i = %4$d").replace("\\","\\\\")
            print(out, end='')
            print(len(out), file=sys.stderr)
            print(out.find('5'), file=sys.stderr)
        if type == 'asm':
            out = file.replace("\n","\",10,\"")
            print(out, end='')
            print(len(file), file=sys.stderr)
        if type == 'py':
            out = file.replace('\n','{nl}').replace("\'", '{sc}').replace('@', '{s}').replace('\"', '{dc}').replace('{','{lb}').replace('}','{rb}')
            print(out, end='')
