#####################################################################################################
# code to run characterization in vivado
#
# the first argument is the filelist containing the list of components to characterize
#
# the second argument is the type of connection
# there are 4 types:
#			- d(ata)
#			- v(alid)
#			- r(eady)
#			- m(ixed)
#
# the third argument is the bitwidth to be considered
# 
# Example usage:
#	python run_characterization.py filelist.lst d 3
#
#
#####################################################################################################

import sys, subprocess, re, os
from multiprocessing import Process

MAX_THREADS = 15

quartus_duplicates = ["fabsf_op"]

def print_error(error_msg):
	print("**ERRROR**")
	print(error_msg)
	exit()

def get_top_level():
	file = open("quartus_synthesis.tcl", "r")

	top_level = ""

	for line in file:
		if re.match("project_new", line) != None:
			top_level = line.split(" ")[1]
			break

	file.close()
	return top_level

def create_timing_report():
	file = open("timing-gen.tcl", "w")
	file.write("project_open " + get_top_level() + "\n")
	file.write("create_timing_netlist\n")
	file.write("read_sdc\n")
	file.write("update_timing_netlist\n")
	file.write("report_timing -setup -npaths 20 -detail full_path -file timing_report.rpt\n")
	file.close()

	cmd = "quartus_sta -t timing-gen.tcl"
	output = subprocess.check_output(cmd, shell=True)

def create_subfile(cmp, file_in , file_pre, bit_width): #function to create file of component

	file = open(file_pre, "r")
	pre = file.read()
	file.close()

	component_desc = ""

	start = False
	for line in file_in:
		if not(start) and re.match("entity "+ cmp  +" is", line)!=None:
			start = True
		if start:
			if re.match("[Ll]ibrary(\\s+)*[Ii][Ee][Ee][Ee](\\s+)*;", line)!=None:
				break
			else:
				line_d = line
				if cmp != "TEHB" and cmp != "OEHB": #with 2 inputs the delay increases way more
					line_d = re.sub("INPUTS(\\s)*:(\\s)*[iI]nteger","INPUTS: integer:=2", line_d)
					line_d = re.sub("OUTPUTS(\\s)*:(\\s)*[iI]nteger","OUTPUTS: integer:=2", line_d)
				else:
					line_d = re.sub("INPUTS(\\s)*:(\\s)*[iI]nteger","INPUTS: integer:=1", line_d)
					line_d = re.sub("OUTPUTS(\\s)*:(\\s)*[iI]nteger","OUTPUTS: integer:=1", line_d)

				line_d = re.sub("INPUT_COUNT(\\s)*:(\\s)*[iI]nteger","INPUT_COUNT: integer:=2", line_d)
				line_d = re.sub("OUTPUT_COUNT(\\s)*:(\\s)*[iI]nteger","OUTPUT_COUNT: integer:=2", line_d)
				line_d = re.sub("[^_]SIZE(\\s)*:(\\s)*[Ii]nteger","SIZE: integer:=1", line_d)
				line_d = re.sub("DATA_SIZE_IN(\\s)*:(\\s)*[Ii]nteger","DATA_SIZE_IN: integer:=" + bit_width, line_d)
				line_d = re.sub("DATA_SIZE_OUT(\\s)*:(\\s)*[Ii]nteger","DATA_SIZE_OUT: integer:=" + bit_width, line_d)
				line_d = re.sub("INPUT_SIZE(\\s)*:(\\s)*[Ii]nteger","INPUT_SIZE: integer:=" + bit_width, line_d)
				line_d = re.sub("OUTPUT_SIZE(\\s)*:(\\s)*[Ii]nteger","OUTPUT_SIZE: integer:=" + bit_width, line_d)
				line_d = re.sub("CONST_SIZE(\\s)*:(\\s)*[Ii]nteger","CONST_SIZE: integer:=1", line_d)
				line_d = re.sub("COND_SIZE(\\s)*:(\\s)*[Ii]nteger","COND_SIZE: integer:=1", line_d)
				line_d = re.sub("ADDRESS_SIZE(\\s)*:(\\s)*[Ii]nteger","ADDRESS_SIZE: integer:=" + str(pow(2,int(4))), line_d)
				line_d = re.sub("FIFO_DEPTH(\\s)*:(\\s)*[Ii]nteger","FIFO_DEPTH: integer:=" + str(pow(2,int(4))), line_d)
				line_d = re.sub("DATA_SIZE(\\s)*:(\\s)*[Ii]nteger","DATA_SIZE: integer:=" + bit_width, line_d)

				#FOR MEMCONT
				line_d = re.sub("DATA_SIZE(\\s)*:(\\s)*[Nn]atural","DATA_SIZE: natural:=" + bit_width, line_d)
				line_d = re.sub("ADDRESS_SIZE(\\s)*:(\\s)*[Nn]atural","ADDRESS_SIZE: natural:=" + str(pow(2,int(4))), line_d)
				line_d = re.sub("BB_COUNT(\\s)*:(\\s)*[Nn]atural","BB_COUNT: natural:=5", line_d)
				line_d = re.sub("LOAD_COUNT(\\s)*:(\\s)*[Nn]atural","LOAD_COUNT: natural:=5", line_d)
				line_d = re.sub("STORE_COUNT(\\s)*:(\\s)*[Nn]atural","STORE_COUNT: natural:=5", line_d)


				component_desc += line_d

	file_out = open(cmp+".vhd", "w")
	file_out.write(pre+"\n\n")
	file_out.write(component_desc)
	file_out.close()

def quartus_clear_duplicates():
	
	for s in quartus_duplicates:
		overwrite = ""

		#os.system("sed -i 's/" + s + "/" + s + "_dynamatic/g' vhdl_work/*")

		cmd = "grep -ir 'ENTITY " + s  + " IS' vhdl_work/"
		output = subprocess.check_output(cmd, shell=True)
		file_name = output.decode().split(":")[0]
		
		file = open(file_name, "r")
		start = False
		end = False
		i = 1
		for line in file:
			line_d = line
		
			if start and not(end):
				if re.match("[Ee][Nn][Tt][Ii][Tt][Yy]*", line)!=None:
					end = True
				else:
					line_d = "-- " + line_d
			
			if not(start) and re.match("entity "+ s  +" is", line)!=None:
				start = True
				line_d = "-- " + line_d
		
			overwrite += line_d
			i += 1
		
		file.close()
		
		file = open(file_name, "w")
		file.write(overwrite)
		file.close()


def characterize_component_in_place(cmp, file_in, bit_width):
	component_desc = ""

	file = open(file_in, "r")

	start = False
	end = False
	for line in file:
		line_d = line

		if not(start) and re.match("entity "+ cmp  +" is", line)!=None:
			start = True
		if start and not(end):
			if re.match("[Ll]ibrary(\\s+)*[Ii][Ee][Ee][Ee](\\s+)*;", line)!=None:
				end = True
			else:
				
				if cmp != "TEHB" and cmp != "OEHB": #with 2 inputs the delay increases way more
					line_d = re.sub("INPUTS(\\s)*:(\\s)*[iI]nteger","INPUTS: integer:=2", line_d)
					line_d = re.sub("OUTPUTS(\\s)*:(\\s)*[iI]nteger","OUTPUTS: integer:=2", line_d)
				else:
					line_d = re.sub("INPUTS(\\s)*:(\\s)*[iI]nteger","INPUTS: integer:=1", line_d)
					line_d = re.sub("OUTPUTS(\\s)*:(\\s)*[iI]nteger","OUTPUTS: integer:=1", line_d)

				line_d = re.sub("INPUT_COUNT(\\s)*:(\\s)*[iI]nteger","INPUT_COUNT: integer:=2", line_d)
				line_d = re.sub("OUTPUT_COUNT(\\s)*:(\\s)*[iI]nteger","OUTPUT_COUNT: integer:=2", line_d)
				line_d = re.sub("[^_]SIZE(\\s)*:(\\s)*[Ii]nteger","SIZE: integer:=1", line_d)
				line_d = re.sub("DATA_SIZE_IN(\\s)*:(\\s)*[Ii]nteger","DATA_SIZE_IN: integer:=" + bit_width, line_d)
				line_d = re.sub("DATA_SIZE_OUT(\\s)*:(\\s)*[Ii]nteger","DATA_SIZE_OUT: integer:=" + bit_width, line_d)
				line_d = re.sub("INPUT_SIZE(\\s)*:(\\s)*[Ii]nteger","INPUT_SIZE: integer:=" + bit_width, line_d)
				line_d = re.sub("OUTPUT_SIZE(\\s)*:(\\s)*[Ii]nteger","OUTPUT_SIZE: integer:=" + bit_width, line_d)
				line_d = re.sub("CONST_SIZE(\\s)*:(\\s)*[Ii]nteger","CONST_SIZE: integer:=1", line_d)
				line_d = re.sub("COND_SIZE(\\s)*:(\\s)*[Ii]nteger","COND_SIZE: integer:=1", line_d)
				line_d = re.sub("ADDRESS_SIZE(\\s)*:(\\s)*[Ii]nteger","ADDRESS_SIZE: integer:=" + str(pow(2,int(4))), line_d)
				line_d = re.sub("FIFO_DEPTH(\\s)*:(\\s)*[Ii]nteger","FIFO_DEPTH: integer:=" + str(pow(2,int(4))), line_d)
				line_d = re.sub("DATA_SIZE(\\s)*:(\\s)*[Ii]nteger","DATA_SIZE: integer:=" + bit_width, line_d)

				#FOR MEMCONT
				line_d = re.sub("DATA_SIZE(\\s)*:(\\s)*[Nn]atural","DATA_SIZE: natural:=" + bit_width, line_d)
				line_d = re.sub("ADDRESS_SIZE(\\s)*:(\\s)*[Nn]atural","ADDRESS_SIZE: natural:=" + str(pow(2,int(4))), line_d)
				line_d = re.sub("BB_COUNT(\\s)*:(\\s)*[Nn]atural","BB_COUNT: natural:=5", line_d)
				line_d = re.sub("LOAD_COUNT(\\s)*:(\\s)*[Nn]atural","LOAD_COUNT: natural:=5", line_d)
				line_d = re.sub("STORE_COUNT(\\s)*:(\\s)*[Nn]atural","STORE_COUNT: natural:=5", line_d)


		component_desc += line_d

	file.close()
	file = open(file_in, "w")
	file.write(component_desc)
	file.close()

def pins(inp, out):
	input = None
	output = None
	if inp == "d":
		input = "dataIn*"
	elif inp == "v":
		input = "pValid*"
	elif inp == "r":
		input = "nReady*"
	elif inp == "c":
		input = "condition*"
	else:
		print_error("Connection input pin not available")

	if out == "d":
		output = "dataOut*"
	elif out == "v":
		output = "valid*"
	elif out == "r":
		output = "ready*"
	elif out == "c":
		output = "condition"
	else:
		print_error("Connection outptu pin not available")
	return input, output


def get_pins_m(comp, conn_type, lib_mixed):
	if conn_type == "m":
		file = open(lib_mixed,"r") # Read the mixed filelist
		found = ""
		for line in file: # Over each line
			tmp = re.split("\\t+", line) # Split over tabs
			lib_comp = tmp[0] # Get the component name
			if re.search(lib_comp, comp) != None: # If the component is there
				found = tmp[1] # Add the connections
		if found == "":
			found = "vr" #if component not found it is assumed to be an operator
		file.close()

		conns = re.split("_", found) # Split the connections on _ char
		input = []
		output = []
		for ele in conns:
			if ele == "":
				continue
			conn = re.split("=", ele)[0] # Split over = char
			inp, out = pins(conn[0], conn[1]) # Build pins, input = output
			input.append(inp) # Add inputs
			output.append(out) # Add outputs
	else:
		print_error("Connection path not available!")
	return input, output


def execute_vivado(tcl_file):
	os.system("quartus_sh -t " + tcl_file + "  >> quartus_log.log")

def copy_over_rtl():
	os.system("cp -r vhdl vhdl_work")


args = sys.argv

if len(args) != 4:
	print_error("Number of args is not sufficient (3 needed)")

file_name=args[1]

file=open(file_name,"r")

list_cmp = []

for line in file:
	list_cmp.append(line.replace("\n",""))

file.close()

conn_type = args[2]
bit_width = args[3]

lib_mixed = "filelist_mixed.lst"

copy_over_rtl()

quartus_clear_duplicates()

list_tcls = []
list_mixed_conn = []

for comp in list_cmp:
	cmd = "grep -ir 'ENTITY " + comp  + " IS' vhdl_work/"
	output = subprocess.check_output(cmd, shell=True)
	file_name = output.decode().split(":")[0]
	characterize_component_in_place(comp, file_name, bit_width)
	syn_comp = "synthesis_" + comp + ".tcl"
	os.system("cp quartus_synthesis.tcl " + syn_comp)
	os.system("sed -i 's/TOP_DESIGN/"+ comp  +"/g' "+syn_comp)
	os.system("sed -i 's/vhdl\//vhdl_work\//g' " + syn_comp)
	
	if conn_type != "m": #non-mixed case
		input, output = pins(conn_type, conn_type)
		os.system("sed -i 's/INPUT_PIN/"+ input  +"/g' "+syn_comp)
		os.system("sed -i 's/OUTPUT_PIN/"+ output  +"/g' "+syn_comp)
		os.system("sed -i 's/_CONN//g' "+syn_comp)
		list_tcls.append(syn_comp)

	else: #mixed case
		input, output = get_pins_m(comp, conn_type, lib_mixed)
		list_mixed_conn.append([]) 
		for ind in range(len(input)):
			in_ind = input[ind]
			out_ind = output[ind]
			syn_comp_ind = "synthesis_" + comp + "_"  + in_ind[0]  + out_ind[0]  +  ".tcl"
			os.system("cp "+syn_comp + " " + syn_comp_ind)
			os.system("sed -i 's/INPUT_PIN/"+ in_ind +"/g' "+syn_comp_ind)
			os.system("sed -i 's/OUTPUT_PIN/"+ out_ind  +"/g' "+syn_comp_ind)
			os.system("sed -i 's/_CONN/_" +  in_ind[0] + out_ind[0]  +   "/g' "+syn_comp_ind)
			list_tcls.append(syn_comp_ind)
			list_mixed_conn[-1].append(in_ind[0] + out_ind[0])

cnt = 0
num_threads = 0
pool_threads = []

while cnt < len(list_tcls):
	while num_threads < MAX_THREADS and cnt < len(list_tcls):
		tcl_file = list_tcls[cnt]

		x = Process(target=execute_vivado, args=(tcl_file,)) 
		pool_threads.append(x)
		x.start()
		num_threads += 1
		cnt += 1
	for x in pool_threads:
		x.join()
	num_threads = 0

for comp_ind in range(len(list_cmp)):
	comp = list_cmp[comp_ind]
	comp_file = comp + ".vhd"
	#os.system("rm " + comp_file)

	synth_file = "synthesis_" + comp + ".tcl"
	#os.system("rm " + synth_file)


	if conn_type != "m":

		create_timing_report()

		rpt_file = "timing_report.rpt"

		if not(os.path.isfile(rpt_file)) :
			continue

		out_file = "timing_all_" + conn_type  +  "_" + bit_width  + ".rpt"
		cmd = "grep 'Data Path Delay:' "+rpt_file

		try:
			delay = subprocess.check_output(cmd, shell=True).split()[3]
		except(subprocess.CalledProcessError): #in case there is no path for this value
			os.system("rm " + rpt_file)
			continue

		os.system("echo '"+comp+"\t\t" + delay.decode()  + "' >> " + out_file)


	else:
		conns = list_mixed_conn[comp_ind]
		print(conns)
		for ele in conns:
			rpt_file = "utilization_post_pr_" + comp + "_" +ele+  ".rpt"

			if not(os.path.isfile(rpt_file)) :
				continue

			#os.system("rm " + rpt_file)

			rpt_file = "timing_post_pr_" + comp + "_" +ele+ ".rpt"

			if not(os.path.isfile(rpt_file)) :
				continue

			out_file = "timing_all_" + conn_type  +  "_" + bit_width  + ".rpt"
			cmd = "grep 'Data Path Delay:' "+rpt_file

			try:
				delay = subprocess.check_output(cmd, shell=True).split()[3]
			except(subprocess.CalledProcessError): #in case there is no path for this value
	#			os.system("rm " + rpt_file)
				continue

			os.system("echo '"+comp+"_" +ele+ "\t\t" + delay  + "' >> " + out_file)


	#os.system("rm " + rpt_file)


if conn_type == "m":
	for tcl in list_tcls:
		os.system("rm "+tcl)

os.system("rm -rf db")
os.system("rm -rf output_files")
os.system("rm *.qpf")
os.system("rm *.qsf")
os.system("rm -rf vhdl_work")
os.system("rm synthesis_*")
os.system("rm -rf incremental_db")
os.system("rm -rf simulation")
os.system("rm *_pin_model_dump.txt")
#os.system("rm timing_report.rpt")
os.system("rm timing-gen.tcl")