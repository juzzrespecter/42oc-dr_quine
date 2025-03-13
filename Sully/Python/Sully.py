import subprocess

data = 'import subprocess{lb{rb}nl{rb}{lb{rb}nl{rb}data = {lb{rb}sc{rb}{lb{rb}s{rb}{lb{rb}sc{rb}{lb{rb}nl{rb}if __name__ == {lb{rb}sc{rb}__main__{lb{rb}sc{rb}:{lb{rb}nl{rb}    i = 5{lb{rb}nl{rb}    if __file__ is not {lb{rb}sc{rb}Sully.py{lb{rb}sc{rb}:{lb{rb}nl{rb}        i -= 1{lb{rb}nl{rb}    if i > 0:{lb{rb}nl{rb}        with open(f{lb{rb}sc{rb}Sully_{lb{rb}i{rb}{lb{rb}sc{rb}, {lb{rb}sc{rb}w{lb{rb}sc{rb}) as s:{lb{rb}nl{rb}            s.write(data.format(nl=chr(10),s=data,sc=chr(39),lb=chr(123),rb=chr(125))){lb{rb}nl{rb}        subprocess.run(f{lb{rb}sc{rb}cython --embed Sully_{lb{rb}i{rb}.py -o Sully_{lb{rb}i{rb}.c&&gcc -Os $(python3-config --includes) -o Sully_{lb{rb}i{rb} $(python3-config --ldflags --embed)&&rm Sully_{lb{rb}i{rb}.c{lb{rb}sc{rb})'
if __name__ == '__main__':
    i = 5
    if __file__ is not 'Sully.py':
        i -= 1
    if i > 0:
        with open(f'Sully_{i}', 'w') as s:
            s.write(data.format(nl=chr(10),s=data,sc=chr(39),lb=chr(123),rb=chr(125)))
        subprocess.run(f'cython --embed Sully_{i}.py -o Sully_{i}.c&&gcc -Os $(python3-config --includes) -o Sully_{i} $(python3-config --ldflags --embed)&&rm Sully_{i}.c')