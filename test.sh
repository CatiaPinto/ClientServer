
#!/bin/bash

echo "----------> Testing the server <-------------- "

TEST_OUTCOME="testOutcome.txt"
curl localhost:8087 > $TEST_OUTCOME

EXPECTED_OUTCOME="expectedOutcome.txt"
DIFF=(diff -q "$TEST_OUTCOME" "$EXPECTED_OUTCOME")

if [ "$DIFF" ]
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
