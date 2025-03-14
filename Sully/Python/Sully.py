import subprocess
import sys

data = 'import subprocess{nl}import sys{nl}{nl}data = {sc}{s}{sc}{nl}if __name__ == {sc}__main__{sc}:{nl}    i = {i}{nl}    if i > 0:{nl}        if len(sys.argv[0][2:]) > 5:{nl}            i -= 1{nl}        with open(f{sc}Sully_{lb}i{rb}.py{sc}, {sc}w{sc}) as s:{nl}            s.write(data.format(nl=chr(10),s=data,sc=chr(39),lb=chr(123),rb=chr(125),i=i)){nl}        subprocess.run(f{sc}cython --embed Sully_{lb}i{rb}.py -o Sully_{lb}i{rb}.c&&gcc -Os $(python3-config --includes) Sully_{lb}i{rb}.c -o Sully_{lb}i{rb} $(python3-config --ldflags --embed)&&rm Sully_{lb}i{rb}.c&&./Sully_{lb}i{rb}{sc}, shell=True)'
if __name__ == '__main__':
    i = 5
    if i > 0:
        if len(sys.argv[0][2:]) > 5:
            i -= 1
        with open(f'Sully_{i}.py', 'w') as s:
            s.write(data.format(nl=chr(10),s=data,sc=chr(39),lb=chr(123),rb=chr(125),i=i))
        subprocess.run(f'cython --embed Sully_{i}.py -o Sully_{i}.c&&gcc -Os $(python3-config --includes) Sully_{i}.c -o Sully_{i} $(python3-config --ldflags --embed)&&rm Sully_{i}.c&&./Sully_{i}', shell=True)