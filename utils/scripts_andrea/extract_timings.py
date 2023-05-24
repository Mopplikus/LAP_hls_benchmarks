import re

#conn_type=["d", "r", "v", "m"]
conn_type=["d", "r", "v"]

bit_widths=["1",  "2",  "4",  "8",  "16",  "32",  "64"]



all_time = []

for i in range(len(conn_type)):

	all_time.append([])
	for j in range(len(bit_widths)):

		all_time[-1].append({})

file_r = open("filelist_mixed.lst", "r")
list_conn_mix = {}
for ele in file_r:
	tmp = re.split("\t+",ele)	
	comp = tmp[0]
	conns = []
	for x in re.split("_", tmp[1]):
		y = re.split("=",x)
		value = y[0]
		if value[0] == "v":
			value = value.replace("v", "p", 1)
		if value[0] == "r":
			value = value.replace("r", "n", 1)
		conns.append(value)
	list_conn_mix[comp] = conns

file_r.close()


file_r = open("filelist.lst", "r")
lines = file_r.read()
file_r.close()
list_comp = re.split("\n", lines)

for conn_ind in range(len(conn_type)):

	conn = conn_type[conn_ind]

	for bit_ind in range(len(bit_widths)):

		bit = bit_widths[bit_ind]

		file_r = open("timing_all_"+conn+"_"+bit+".rpt", "r")

		for line in file_r:
			tmp = re.split("\\t+", line)
			comp = tmp[0]
			delay = tmp[1][:-3]
			all_time[conn_ind][bit_ind][comp] = delay

		file_r.close()


	file_w = open("output_"+conn+".rpt", "w")

	if conn_type[conn_ind] == "m":
			
		for comp in list_comp:
			if comp == "":
				continue
			line = comp
			if comp in list_conn_mix:
				mixed = list_conn_mix[comp]
			else:
				mixed = ["pr"]
			for mix_conn in mixed:
				cnt = 0

				comp_mix = comp + "_" + mix_conn
				line = comp_mix

				for bit_ind in range(len(bit_widths)):
					if comp_mix in all_time[conn_ind][bit_ind]:
						delay = all_time[conn_ind][bit_ind][comp_mix]
					else:
						delay = "0.000" 
						cnt = cnt+1

					line +="\t\t"+delay
			
				if cnt == len(bit_widths): #in case there are only 0 values for the component it can be ignored
					continue

				file_w.write(line+"\n")

		file_w.close()

		continue
		


	for comp in list_comp:
		cnt = 0
		if comp == "":
			continue
		line = comp
		for bit_ind in range(len(bit_widths)):
			if comp in all_time[conn_ind][bit_ind]:
				delay = all_time[conn_ind][bit_ind][comp]
			else:
				delay = "0.000" 
				cnt = cnt+1

			line +="\t\t"+delay
		
		if cnt == len(bit_widths): #in case there are only 0 values for the component it can be ignored
			continue

		file_w.write(line+"\n")

	file_w.close()
