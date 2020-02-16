build_src :
	javac -d ./build -cp lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar ./src/java/*.java
build_test :
	javac -d ./build -cp ./build:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar ./src/test/*.java
test :
	java -cp .:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar:build/ org.junit.runner.JUnitCore EdgeConnectorTest
clean :
	rm ./build/*.class
