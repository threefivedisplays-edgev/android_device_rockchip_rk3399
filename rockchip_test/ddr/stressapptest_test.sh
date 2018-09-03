#!/bin/sh

RESULT_DIR=/data/logs/rockchip_test
RESULT_LOG=${RESULT_DIR}/stressapptest.log

if [ ! -e "/data/logs/rockchip_test" ]; then
	echo "no /data/logs/rockchip_test"
	mkdir /data/logs/rockchip_test
fi

#run stressapptest_test
echo "**********************DDR STRESSAPPTEST TEST 48H*************************"
echo "***run: stressapptest -s 172800 -i 4 -C 4 -W --stop_on_errors -M 128*****"
echo "**********************DDR STRESSAPPTEST TEST****************************"
stressapptest -s 172800 -i 4 -C 4 -W --stop_on_errors -M 128 > $RESULT_LOG & 

echo "******DDR STRESSAPPTEST START: you can see the log at $RESULT_LOG********"
