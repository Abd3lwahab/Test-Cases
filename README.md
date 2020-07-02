# Test-Cases
Test-Cases is a shell script that compiles and test given C++ file on given test cases in a text file and print the output of each test case into a new text file.

## Installation
```bash
git clone https://github.com/Abdelwahab07/Test-Cases.git
cd Test-Cases
./Test-Cases.sh 
```
If you got the following error: 
```bash
bash: ./Test-Cases.sh: Permission denied
```
Enter the following command:
```bash
chmod +x Test-Cases.sh
```

## Usage
```bash
./Test-Cases.sh [CPPFILE] [TestCasesFILE]
```
The script should run with two command-line arguments:
- CPPFILE: is the name of the C++ file with extension ".cpp" that will be able to compile.
- TestCasesFILE: is the name of a text file that includes test cases that will testing on the program.   

The script should run in the same directory with the C++ file and test cases file.

### Run from anywhere
If you want to run the script from anywhere and avoid copying the script each time to the same folder with C++ and test cases file. Add the script to your PATH by this command:
```bash
sudo mv Test-Cases.sh /usr/local/bin
```
Then you will be able to run the script from anywhere and you will not need to write “./” and use it as follows:
```bash
Test-Cases.sh [CPPFILE] [TestCasesFILE]
```

### Format of Test Cases File
- Add an empty line between each test case.
- It allows the test case to be in more than one line.
- Add two empty lines after the last test case.

Example:
```text
Test Case 1
Continue Test Case 1

Test Case 2
Continue Test Case 2


```
The Output will save in file called 'output.txt' with information about each test case and its result.

##### Notice: g ++ compiler should be installed and these are the default flags and can be modified on line 40 in the script.
```bash
g++ -pipe -O2 -std=c++14 -lm
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://github.com/Abdelwahab07/Test-Cases/blob/master/LICENSE)   
Copyright (c) 2020 Abdelwahab Hussein