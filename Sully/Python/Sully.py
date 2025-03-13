import subprocess

data = 'import subprocess{nl}{nl}data = {sc}{s}{sc}{nl}if __name__ == {sc}__main__{sc}:{nl}    i = 5{nl}    if __FILE__ is not {sc}Sully.py{sc}:{nl}        i -= 1{nl}    if i > 0:{nl}        with open(f{sc}Sully_{i}{sc}, {sc}r{sc}) as s:{nl}            s.write(data.format(nl=chr(10),s=data,sc=chr(39))){nl}        subprocess.run(f{sc}cython --embed Sully_{i}.py -o Sully_{i}.c&&gcc -Os $(python3-config --includes) -o Sully_{i} $(python3-config --ldflags --embed){sc}){nl}{nl}'
if __name__ == '__main__':
    i = 5
    if __FILE__ is not 'Sully.py':
        i -= 1
    if i > 0:
        with open(f'Sully_{i}', 'r') as s:
            s.write(data.format(nl=chr(10),s=data,sc=chr(39)))
        subprocess.run(f'cython --embed Sully_{i}.py -o Sully_{i}.c&&gcc -Os $(python3-config --includes) -o Sully_{i} $(python3-config --ldflags --embed)')

