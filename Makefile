.PHONY:clean

OBJS = main.o algorithm_topo.o box_judge.o branch_judge.o common_module.o global_var_algorithm.o  meter_order.o result_integrate.o  test_demo.o test_module.o


main: $(OBJS) 
%.o : %.c
	gcc -c $^ -o $@

clean:
	-rm -rf $(OBJS)
