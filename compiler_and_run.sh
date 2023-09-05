g++ -O2 corbec++.cpp -o corbec++ -I/home/namansn/opt/gurobi1002/linux64/include -L/home/namansn/opt/gurobi1002/linux64/lib -lgurobi_c++ -lgurobi100
cat testcases/exact161.gr | ./corbec++ 
