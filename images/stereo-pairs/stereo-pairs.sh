#!/bin/sh

working_dir=`pwd`

cd /home/cotryti/Workspace/verdione/build/bin/

for algorithm in `echo pyramid`
do

    for win_dim in `seq 7 2 21`
    do
	dir=tsukuba
	./depthestimation_cli --alg ${algorithm} --max-disp 15 --win-size $win_dim --disp-scale 16 /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_${win_dim}_nominmax.png
	./depthestimation_cli --alg ${algorithm} --max-disp 15 --win-size $win_dim --disp-scale 16 --cross-check /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_crosschecked_${win_dim}_nominmax.png
        
	dir=venus
	./depthestimation_cli --alg ${algorithm} --max-disp 19 --win-size $win_dim --disp-scale  8 /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_${win_dim}_nominmax.png
	./depthestimation_cli --alg ${algorithm} --max-disp 19 --win-size $win_dim --disp-scale  8 --cross-check /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_crosschecked_${win_dim}_nominmax.png 
        
	dir=teddy
	./depthestimation_cli --alg ${algorithm} --max-disp 59 --win-size $win_dim --disp-scale  4 /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_${win_dim}_nominmax.png
	./depthestimation_cli --alg ${algorithm} --max-disp 59 --win-size $win_dim --disp-scale  4 --cross-check /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_crosschecked_${win_dim}_nominmax.png 
        
	dir=cones
	./depthestimation_cli --alg ${algorithm} --max-disp 59 --win-size $win_dim --disp-scale  4 /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_${win_dim}_nominmax.png
        ./depthestimation_cli --alg ${algorithm} --max-disp 59 --win-size $win_dim --disp-scale  4 --cross-check /home/cotryti/datasets/stereo-pairs/${dir}/im* -o ${working_dir}/${dir}_${algorithm}_crosschecked_${win_dim}_nominmax.png 
    done
    
done
