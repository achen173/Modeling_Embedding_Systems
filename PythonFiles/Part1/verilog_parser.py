def initialize_states(filename):
    with open(filename, "r") as o:
        MyFile = o.read()
        mydict = {}
        for line in MyFile.split("\n"):
            if "input" in line or "reg" in line:
               for input in line[:-1].split()[1:][0].split(","):
                    if "clock" not in input:
                        mydict[input] = None
    return mydict

def gates(mydict, filename):
    with open(filename, "r") as o:
    # with open("./lab1_files/stoplight1.v", "r") as o:
        MyFile = o.read()
        dont_delete = []
        for line in MyFile.split("\n"):
            if "output" in line or "input" in line:
                for elm in line[:-1].split()[1:][0].split(","):
                    if elm != "clock":
                        dont_delete.append(elm)
            if "and" in line:
                args = line[line.find("(") + 1:line.find(")")].split(",")
                mydict[args[0]] = mydict[args[1]] & mydict[args[2]]
            if "not" in line:
                args = line[line.find("(") + 1:line.find(")")].split(",")
                if mydict[args[1]] == 1:
                    mydict[args[0]] = 0
                else:
                    mydict[args[0]] = 1
        test = mydict.copy()
        for keys in list(test.keys()):
            if "S" not in keys:
                if keys not in dont_delete:
                    del test[keys]
        print(test)
        return mydict
#     with open("test.v", "w") as txt_file:
#         txt_file.write("\n")
#         for line in data:
#             txt_file.write(" ".join(line) + "\n")  # works with any number of elements in a line


def printAllKLength(set, mydict):
    n = len(set)
    printAllKLengthRec(set, "", n, len(mydict), mydict)

def printAllKLengthRec(set, prefix, n, k, mydict):
    if (k == 0):
        for test, keys in zip(list(prefix), list(mydict.keys())):
            mydict[keys] = int(test)
        gates(mydict, "./lab1_files/stoplight2.v")
        return
    for i in range(n):
        newPrefix = prefix + set[i]
        printAllKLengthRec(set, newPrefix, n, k - 1, mydict)

if __name__ == "__main__":
    print("First Test")
    set1 = ['1', '0']
    mydict = initialize_states("./lab1_files/stoplight2.v")    # "./lab1_files/stoplight1.v"
    printAllKLength(set1, mydict)
