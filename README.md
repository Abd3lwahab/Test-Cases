# Test-Cases
Test-Cases is a shell script that compiles and test given C++ file on given test cases in text file, and print the output of each test case into new text file.

## Installation

```bash
git clone https://github.com/Abdelwahab07/Test-Cases.git
cd Test-Cases
./Test-Cases.sh 
```

## Usage

```bash
./Test-Cases.sh [CPPFILE] [TestCasesFILE]
```
Should start script with two command line argument:
- CPPFILE : is a name of C++ file with extinitio ".cpp" that will be able to compiling.
- TestCasesFILE :is a name of files that include test cases that will testing on the program
And should use script in the same path with two C++ file and Test cases file

### Format of Test Cases File
- Add empty line between each test case.
- It's allowing that test case have more than one line.
- Add two empty lines after last test case.

Example:
```text
TestCase 1
Continue TestCase 1

TestCase 2
Continue TestCase 2


```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
