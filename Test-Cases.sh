#!/bin/bash
# Abdelwahab07

# Run given test cases file into given c++ file

#COLORS
BOLD="\e[1m"  
    
printf "${BOLD}********* Test-Case Script Running *********\n"

# Check command line argument entered correct or not
printf "[+] Checking command line arguments: "
if [ $# -ne 2 ]; then
    echo "Missing arguments."
    echo "Usage: ./Test-Cases.sh [CPPFILE] [TestCasesFILE]"
    echo "Script Ending."
    exit 1
else
    echo "Correct."
fi

# Assign command line argument to variables
cppFile="$1"
testCasesFile="$2"

# Check the given files exist and first one is c++ file, and the second is a text file
printf "[+] Checking files: "
if [ -f "$cppFile" ] && [ "${cppFile##*.}" == 'cpp' ] && [ -f "$testCasesFile" ] && [ "${testCasesFile##*.}" == 'txt' ]; then
    echo "Files exists."
else
    echo "Error in files."
    echo "Script Ending."
    exit 2
fi

# Compiling c++ file with abilatiy to edit flags
printf "[+] Start compiling: "

src="${cppFile%.*}"
make=$(g++ -pipe -O2 -std=c++14 -lm -o "${cppFile%.*}" "$cppFile")

## Check the compiling process succses or not to exit
if [ -n "$make" ]; then
    echo "Compiling failed."
    echo "Script Ending."
    exit 3
else
    echo "Successfully compiled."
fi

# Delete the output file if exist
if [ -f "output.txt" ]; then
    rm output.txt
fi

printf "********* Result of running following test cases on %s *********\n\n" "$src" >> output.txt
printf "\n############## Test Running ##############\n"

counter=0

# Read each test case from text file
testCase=""
while read -r line
do
    # Check if current line is empty
    if [ -z "$line" ]; then
        counter=$((counter+1))
        printf "Test Case %s: %s\n" "$counter" "$testCase">> output.txt
	    echo "........ Running on Test case : $counter ........"
        {
            printf " Result: "
            # Run current test case on the execution file and print the output in output.txt
            "./$src" <<< "$testCase" 
            printf "\n"
        }>> output.txt

        # Clear the test case
        testCase=""
    else
        if [ "$testCase" == "" ]; then
            testCase="$line"
        else
            testCase="$testCase $line"
        fi
    fi
done <"$testCasesFile"

printf "********* Don't forget to star the repository on GitHub, Thanks *********\n" >> output.txt

printf "\nResult saved successfully in output.txt\n"

echo "********* Script End succesfully! *********"
exit 0