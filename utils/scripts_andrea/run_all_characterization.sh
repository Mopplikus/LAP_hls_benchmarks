
conn_type=("d" "r" "v" "m")
#conn_type=("d")

bit_widths=("1"  "2"  "4"  "8"  "16"  "32"  "64")
#bit_widths=("1")

for conn in ${conn_type[*]}; do

	for bit in ${bit_widths[*]}; do

		python3 run_characterization.py filelist.lst $conn $bit 

	done

done 


