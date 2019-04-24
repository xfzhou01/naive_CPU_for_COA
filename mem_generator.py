
import numpy as np

depth = 128
width = 28
control_width = 16

file = open('mem1.coe','w')

file.write("memory_initialization_radix = 2;\n")
file.write("memory_initialization_vector = \n")


for i in range(128):
	ctrl = []
	rw = 0  # r0 w1
	ALU = 0
	Address = 0
	# 复位
	
	if i==0:
		ctrl.append(2)
	if i==1:
		ctrl.append(5)
		ctrl.append(0)
		rw = 0
	if i==2:
		ctrl.append(14)
		ctrl.append(4)
		Address = 4
	if i==3:
		ctrl.append(13)
	#	ctrl.append(4)
	#	Address = 4
	# fetch
	
	if i==4:
		ctrl.append(8)
	if i==5:
		ctrl.append(5)
		ctrl.append(0)
		rw = 0
	if i==6:
		ctrl.append(6)
		ctrl.append(15)
	if i==7:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 3
		Address = 0
	# indirect
	
	if i==8:
		ctrl.append(8)
	if i==9:
		ctrl.append(5)
		ctrl.append(0)
		rw = 0
	if i==10:
		ctrl.append(6)
	if i==11:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 3
		Address = 0
	#add
	
	
	if i==12:
		ctrl.append(8)
	if i==13:
		ctrl.append(11)
	if i==14:
		ctrl.append(12)
		ctrl.append(0)
		rw = 1
		Address = 0
	# store
	
	if i==15:
		ctrl.append(8)
	if i==16:
		ctrl.append(5)
		ctrl.append(0)
		rw = 0
	if i==17:
		ctrl.append(6)
	if i==18:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 4
		Address = 0
	#sub	
	
	if i==19:
		ctrl.append(3)
	# JMP
	
	if i==20:
		ctrl.append(8)
	if i==21:
		ctrl.append(5)
		ctrl.append(0)
		rw = 0
	if i==22:
		ctrl.append(6)
	if i==23:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 5
		Address = 0
	if i==24:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 5
		Address = 0		
	#mul	

	if i==25:
		ctrl.append(8)
	if i==26:
		ctrl.append(5)
		ctrl.append(0)
		rw = 0
	if i==27:
		ctrl.append(6)
	if i==28:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 6
		Address = 0	
	#and	

	if i==29:
		ctrl.append(8)
	if i==30:
		ctrl.append(5)
		ctrl.append(0)
		rw = 0
	if i==31:
		ctrl.append(6)
	if i==32:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 7
		Address = 0	
	#or


	if i==33:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 8
		Address = 0	
	#not
	
	if i==34:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 9
		Address = 0	
	#srl	
	
	if i==35:
		ctrl.append(7)
		ctrl.append(9)
		ALU = 10
		Address = 0	
	#srr	
	
	ctrl_signal = np.zeros((1,16))
	for signal in ctrl:
		ctrl_signal[0,int(15-signal)] = 1
		
	for j in range(16):
		file.write(str(int(ctrl_signal[0,j])))
	
	file.write(str(int(rw)))	
	alu = '{:04b}'.format(ALU)
	addr = '{:07b}'.format(Address)
	file.write(alu)
	file.write(addr)
	if i != 127:
		file.write(",")
	file.write("\n")

	
file.close()
	
	
	
