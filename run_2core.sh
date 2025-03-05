
# provide the path of both the trace file
TRACE_DIR1=""  #path of the first trace file (excluding the trace file name)
TRACE_DIR2=""  #path of the second trace file (excluding the trace file name)
binary=${1}
num1=${2}
num2=${3}


trace1=`sed -n ''$num1'p' workloads.txt | awk '{print $1}'`
trace2=`sed -n ''$num2'p' workloads.txt | awk '{print $1}'`

mkdir -p results #change the name of your folder as required 
(${binary} -warmup_instructions 50000000 -simulation_instructions 50000000 -traces ${TRACE_DIR1}/${trace1} ${TRACE_DIR2}/${trace2}) > results/mix-${num1}-${num2}.txt & #change the name of the folder as required