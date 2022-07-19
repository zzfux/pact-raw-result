echo "========================================================"
echo "N" $1  "IH" $2 "IW" $3 "F" $4 "C" $5 "R" $6 "S" $7 "STr" $8 "Pd" $9  


../build/tools/profiler/cutlass_profiler --conv_kind=fprop  --n=$1 --h=$2 --w=$3 --c=$5 --k=$4 --r=$6 --s=$7 --pad_h=$9 --pad_w=$9  \
                  --stride_h=$8 --stride_w=$8 --dilation_h=1 --dilation_w=1  -output=results.${11}.csv --append=true --tag=chip:2080Ti

../build/tools/profiler/cutlass_profiler --conv_kind=fprop  --n=$1 --h=$2 --w=$3 --c=$5 --k=$4 --r=$6 --s=$7 --pad_h=$9 --pad_w=$9  \
                  --stride_h=$8 --stride_w=$8 --dilation_h=1 --dilation_w=1  -output=results.${11}.csv --append=true --tag=chip:GV100 

