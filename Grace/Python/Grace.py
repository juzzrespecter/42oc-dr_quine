__DATA__='''__DATA__={sc}{sc}{sc}{s}{sc}{sc}{sc}{nl}__OPEN__={sc}{sc}{sc}open({dc}Grace_kid.py{dc}, {dc}w{dc}){sc}{sc}{sc}{nl}FT={sc}{sc}{sc}{nl}if __name__ == {dc}__main__{dc}:{nl}  with __OPEN__ as f:{nl}    data = {dc}__DATA__{dc}{nl}    f.write(data.format(nl=chr(10),s=data,dc=chr(34),sc=chr(39))){nl}{sc}{sc}{sc}{nl}# Obligaciones contractuales{nl}exec(FT.replace({dc}__OPEN__{dc}, __OPEN__).replace({dc}__DATA__{dc},__DATA__))'''
__OPEN__='''open("Grace_kid.py", "w")'''
FT='''
if __name__ == "__main__":
  with __OPEN__ as f:
    data = "__DATA__"
    f.write(data.format(nl=chr(10),s=data,dc=chr(34),sc=chr(39)))
'''
# Obligaciones contractuales
exec(FT.replace("__OPEN__", __OPEN__).replace("__DATA__",__DATA__))