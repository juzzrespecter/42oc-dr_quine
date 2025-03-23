import subprocess
import os

data = 'import subprocess{nl}import os{nl}{nl}data = {sc}{s}{sc}{nl}def get_fn():{nl}    with open(f{sc}/proc/{lb}os.getpid(){rb}/cmdline{sc}) as f:{nl}        name = f.read(){nl}    return os.path.basename(name){nl}{nl}if __name__ == {sc}__main__{sc}:{nl}    i = {i}{nl}{nl}    fn = get_fn(){nl}    if i > 0:{nl}        if len(fn) > 6:{nl}            i -= 1{nl}        with open(f{sc}Sully_{lb}i{rb}.py{sc}, {sc}w{sc}) as s:{nl}            s.write(data.format(nl=chr(10),s=data,sc=chr(39),lb=chr(123),rb=chr(125),i=i)){nl}        subprocess.run(f{sc}cython --embed Sully_{lb}i{rb}.py -o Sully_{lb}i{rb}.c&&gcc -Os $(python3-config --includes) Sully_{lb}i{rb}.c -o Sully_{lb}i{rb} $(python3-config --ldflags --embed)&&rm Sully_{lb}i{rb}.c&&./Sully_{lb}i{rb}{sc}, shell=True)'
def get_fn():
    with open(f'/proc/{os.getpid()}/cmdline') as f:
        name = f.read()
    return os.path.basename(name)

if __name__ == '__main__':
    i = 5

    fn = get_fn()
    if i > 0:
        if len(fn) > 6:
            i -= 1
        with open(f'Sully_{i}.py', 'w') as s:
            s.write(data.format(nl=chr(10),s=data,sc=chr(39),lb=chr(123),rb=chr(125),i=i))
        subprocess.run(f'cython --embed Sully_{i}.py -o Sully_{i}.c&&gcc -Os $(python3-config --includes) Sully_{i}.c -o Sully_{i} $(python3-config --ldflags --embed)&&rm Sully_{i}.c&&./Sully_{i}', shell=True)