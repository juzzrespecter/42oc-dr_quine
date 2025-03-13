# Comment outside program definition
def func():
    data = "# Comment outside program definition{nl}def func():{nl}    data = {cm}{s}{cm}{nl}    print(data.format(nl=chr(10),s=data,cm=chr(34))){nl}if __name__ == {cm}__main__{cm}: func() # Comment inside main func."
    print(data.format(nl=chr(10),s=data,cm=chr(34)))
if __name__ == "__main__": func() # Comment inside main func.
