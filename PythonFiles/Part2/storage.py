class writer:
    def __init__(self, inputfile, unrolls):
        self.outputfile = "data.dimacs"
        self.inputfile = inputfile
        self.unrolls = unrolls
        self.contents = []
        self.var = {'MyNumber':0}

    def write(self):
        with open(self.inputfile, "r") as i:
            MyFile = i.read()
            # for x in range(self.unrolls):  # all your contents in here
            for line in MyFile.split("\n"):
                if "reg" in line:
                    args = line[:-1].split()[1].split(",")
                    # args = [str(item) + '_' + str(s) for s in range(self.unrolls) for item in line[:-1].split()[1].split(",")]
                    self.initialStates(args)
                    continue
                elif "and" in line:
                    args = line[line.find("(") + 1:line.find(")")].split(",")
                    for s in range(self.unrolls):
                        argsv = [str(item) + '_' + str(s) for item in args]
                    # args = [str(item) + '_' + str(s) for s in range(self.unrolls) for item in line[line.find("(") + 1:line.find(")")].split(",")]
                        self.andGate(self.updatevar(argsv))
                    continue
                elif "not" in line:
                    args = line[line.find("(") + 1:line.find(")")].split(",")
                    for s in range(self.unrolls):
                        argsv = [str(item) + '_' + str(s) for item in args]
                    # args = [str(item) + '_' + str(s) for s in range(self.unrolls) for item in line[line.find("(") + 1:line.find(")")].split(",")]
                        self.notGate(self.updatevar(argsv))
                    continue
                if self.unrolls != 1:
                    if "<=" in line:  # transitional states
                        args = line[:-1].split("<=")    # [s0, nso]
                        for x in range(self.unrolls - 1):
                            present = str(x)
                            next = str(x+1)
                            self.contents.append('-' + str(self.var[args[1] + '_' + present]) + ' ' + str(self.var[args[0] + '_' + next]) + ' 0')
                            self.contents.append(str(self.var[args[1] + '_' + present]) + ' -' + str(self.var[args[0] + '_' + next]) + ' 0')
                            # print("\n" + str(self.var[args[1] + '_' + present]) + ' -' + str(self.var[args[0] + '_' + next]) + ' 0')
                            # print("\n")
                            print("\n" + '-' + str(self.var[args[1] + '_' + present]) + ' ' + str(self.var[args[0] + '_' + next]) + ' 0')
                            # self.contents.append('-' + str(self.var['NS' + str(count) + '_' + str(self.unrolls - 1)]) + ' 0')
            if "//" in MyFile.split("\n")[-1]:  # dealing with final states
                args = line.split(":")
                count = 0
                for char in reversed(args[1]):
                    if char == '0':
                        self.contents.append('-' + str(self.var['NS' + str(count) + '_' + str(self.unrolls - 1)]) + ' 0')
                    else:
                        self.contents.append(str(self.var['NS' + str(count) + '_' + str(self.unrolls - 1)]) + ' 0')
                    count += 1

        self.contents.insert(0,'p '+'cnf '+str(len(self.var)-1)+' '+str(len(self.contents)))  # add at last  #p cnf 8 14
        with open(self.outputfile, "w") as o:
            for cycles in self.contents:
                o.write(str(cycles)+'\n')
        print(self.var)

    def initialStates(self, mylist):    # setting all initial states to 0
        for items in mylist:
            if items in self.var:
                if '_0' in items:
                    self.contents.append('-' + str(self.var[items]) + ' 0')
                # print("initial condition: ", '-' + str(self.var[items]) + ' 0')
            else:
                self.var[items] = self.var[list(self.var.keys())[-1]] + 1
                if '_0' in items:
                    self.contents.append('-' + str(self.var[items]) + ' 0')
                # print("initial condition: ", '-' + str(self.var[items]) + ' 0')

    def andGate(self, mylist):
        self.contents.append(mylist[1] + ' -' + mylist[0] + ' 0')   # (a_¬x)
        self.contents.append(mylist[2] + ' -' + mylist[0] + ' 0')   # (b_¬x)
        self.contents.append('-' + mylist[1] + ' -' + mylist[2] + ' ' + mylist[0] + ' 0')   # (¬a_¬b_x)

    def notGate(self, mylist):  # (a_x)
        self.contents.append('-' + mylist[1] + ' -' + mylist[0] + ' 0')  # (¬a_¬x)
        self.contents.append(mylist[1] + ' ' + mylist[0] + ' 0')  # (a_x)

    def updatevar(self, mylist):    # returns a tuple of ints
        val = []
        for items in mylist:
            if items in self.var:
                val.append(str(self.var[items]))
            else:
                self.var[items] = self.var[list(self.var.keys())[-1]] + 1
                val.append(str(self.var[items]))
        return val

    def getoutput(self):
        return self.outputfile


# how to deal with next state
# S1<=NS1;
# S0<=NS0;
# end
# endmodule
# //State:11