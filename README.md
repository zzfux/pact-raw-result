# pact-cutlass-res-csv
\cutlass
cutlass result for 2080Ti and V100
conv2d-2080.csv and conv2d-v100.csv list all result data after we ran the cutlass profiler 
We combine the all results in these 2 files. 
6 kernel x 20 benchmark =  120 rows in csv per machine.
We also add the running cmd in the folder

\cudnn-profile
We show one problem size with 3 different layouts
1) input NCHW, kernel NCHW, output NCHW
2) input NHWC, kernel NHWC, output NHWC
3) input NHWC, kernel NCHW, output NHWC

We do not notice layout transpose kernel in case 1 and 2; Only in case 3 algorithm2 we see the "nchwToNhwcKernel" transpose call.