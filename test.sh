
#!/bin/bash

echo "----------> Testing the server <-------------- "

TEST_OUTCOME="testOutcome.txt"
curl localhost:8087 > $TEST_OUTCOME

EXPECTED_OUTCOME="expectedOutcome.txt"

diff --brief "$TEST_OUTCOME" "$EXPECTED_OUTCOME"
DIFF=$?

if [ $DIFF -eq 1 ]
then
	echo "Test Fail"
	echo "Expected" 
	cat $EXPECTED_OUTCOME
	echo "but obtained" 
	cat $TEST_OUTCOME
	exit 1
fi

echo "Test OK"
exit 0
