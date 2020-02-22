# Modeling_Embedding_Systems
UMASS ECE597

https://github.com/achen173/Modeling_Embedding_Systems

**Objective** : Sequential systems have memory elements with values that evolve according to inputs and combinational logic. The
behavior of sequential systems can be characterized in terms of states and transitions. Reachability analysis deals
with determining which states can be reached from a given initial state or initial states. In this project, the initial state is
0 for each benchmark. Reachability analysis of large embedded systems is a complex task attracting significant
research efforts. In this directory there are sequential Verilog design modules with combinational logic and state
updates on each positive clock edge.  For simplicity, the only combinational gate types used in the designs are 2-input AND gates and NOT gates (inverters).

Essentially, this is simple verification tool for Verilog that uses SAT solving as a backend. This is a
program that will check reachability by parsing Verilog modules, unrolling the transition relation and converting it to
dimacs formatted CNF, and calling a SAT solver (picosat) that will check whether the formula is satisfiable, and the result
will reveal whether the target state is reachable in some number of transitions from the initial state. 

*Note: Make sure to use Python3.6+


## To Run
  1) cd ./Modeling_Embedding_Systems/PythonFiles/Part2/    
  2) python3.6 main.py *your_verilog_file* *number_of_unrolls*
  
  Alternatively if you want to check state up to the number of unrolls
  
  2) python3.6 main.py *your_verilog_file* -c *number_of_unrolls*

## Example Usage and Output
  ./Modeling_Embedding_Systems/PythonFiles/Part2$ python3.6 main.py verilogFiles/ex1.v 2
  
![](https://github.com/achen173/Modeling_Embedding_Systems/blob/master/Example_For_ReadMe/Example1.JPG)

  ./Modeling_Embedding_Systems/PythonFiles/Part2$ python3.6 main.py verilogFiles/ex1.v -c 2
  
![](https://github.com/achen173/Modeling_Embedding_Systems/blob/master/Example_For_ReadMe/Example2.JPG)

## For Help
  Run ./Modeling_Embedding_Systems/PythonFiles/Part2$ python3.6 main.py --help
