import argparse
from os import path
import sys
import cnf_writer
import subprocess
from cnf_writer import writer
import time
start_time = time.time()
    # make sure you run this script with python3.6+

if __name__ == "__main__":

    p = argparse.ArgumentParser()
    p.add_argument("file", type=str, help="name/path of the Verilog file to read")
    p.add_argument("unrolls", type=int, help="number of times to unroll the transition relation in the symbolic search")
    p.add_argument("-c", action="store_true", help="up to the number of times of unrolling")
    args = p.parse_args()

    # unrolls -> number of clock cycles (ex. 1 = if the final state is one transition away)

    if len(sys.argv) < 3 or args.unrolls < 0:
        raise Exception("Invalid Arguments!")

    if path.exists(args.file):
        if not path.isfile(args.file):
            raise Exception("Given path is not a file!")
    else:
        raise Exception("Given path does not exist!")

    if args.c:
        for times in range(1, args.unrolls + 1):
            print("\nTHIS IS THE", times, " UNROLL RESULTS: ")
            dimacs = writer(args.file, times)
            dimacs.write()
            subprocess.run(["picosat", dimacs.getoutput()], stdout=None)
    else:
        print("\nTHIS IS THE", args.unrolls, " UNROLL RESULTS: ")
        dimacs = writer(args.file, args.unrolls)
        dimacs.write()
        subprocess.run(["picosat", dimacs.getoutput()], stdout=None)
        print("My program took", time.time() - start_time, "seconds to run")

# (1) the name of the Verilog file to read; and (2) the number of times to unroll the transition relation in the symbolic search.