try:
    while True:
        graph_def = str(input())
        if len(graph_def)==0:
            continue
        graph_def = graph_def[:-1]
        graph_list = graph_def.split(' ')
        id_ = graph_list[1]+graph_list[3]
        n = int(graph_list[3])
        adjL = []
        for i in range(n):
            adj = input()
            adj = adj.split(' ')
            adjL.append(adj)
        edge_set = []
        for i in range(n):
            for j in range(n):
                if adjL[i][j]=='1' and i<j:
                    edge_set.append(str(i+1)+" "+str(j+1))
        m = len(edge_set)
        file_name = 'test_graph_'+id_+'.txt'
        with open(file_name, 'w') as file:
            file.write("p cep "+ str(n) + " " + str(m) + "\n")
            for i in range(m):
                file.write(str(edge_set[i])+"\n")
        print("File writing complete.")

except EOFError:
    print("End of input reached.")