¡IMPORTANTE, LEER!

----
El archivo de extensión .xlsx tiene los resultados con los que se construyeron las tablas.
----


This C++ software package contains an implementation of the Construct, Merge, Solve and Adapt (CMSA) metaheuristic for solving a classical combinatorial optimization problem in graph theory: the maximum independent set problem.

COMPILACTION
============

The software can be compiled with any recent GCC version under Linux, using the 'make' command. You only have to change two path names in the file 'Makefile' such that they point to your installation of ILOG CPLEX on your machine. The executable is called 'cmsa'.

HOW TO USE THE SOFTWARE
=======================

The software offers the following command line parameters:

-i <instance_file>                 Name of the file that contains the problem instance to be solved (the packed contains three example files: graph1.txt, graph2.txt and graph3.txt)
-nruns <number_of_applications>    This is the number of times you want to apply CMSA to the provided problem instance
-t <total_computation_time>        Computation time limit for CMSA
-cpl_t <cplex_time_limit>          Computation time limit of CPLEX for solving the subproblem at each CMSA iteration
-drate <determinism_rate>          This is the determinism rate for solution construction. A value close to zero means basically a random construction, while a value of 1 would result in a deterministic construction
-nsols <number_of_construction>    Number of solution constructions per iteration
-max_age <maximum_allowed_age>     The maximum age of solution components. Once this age is reached, the corresponding solution component is removed from the subproblem.
-lsize <candidate_list_size>       Another parameter influencing the solution construction. The longer the list, the more random is the solution construction
-warm_start <boolean>              If value zero is provided, no solution for warm-starting CPLEX is used.
-h_emph <boolean>                  If value zero is provided, CPLEX is executed in default mode. In case of value one, CPLEX uses the highest heuristic emphasis.
-cpl_abort <boolean>               If value zero is provided, CPLEX only stops at the computation time limit, or if previously optimality has been proven. In case of value one, CPLEX stops has an additional stopping criterion (improvement of the best-so-far solution)

Example call: ./cmsa -i graph1.txt -nruns 1 -t 600 -cpl_t 15 -drate 0.5 -nsols 10 -max_age 3 -lsize 20 -warm_start 0 -h_emph 1 -cpl_abort 0


In case of doubts or questions, you might consider contacting Christian Blum at christian.blum@iiia.csic.es 

