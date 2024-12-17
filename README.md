# Bash Script Bug: Directory Handling

This repository demonstrates a common error in bash scripting related to handling directories that may be empty or non-existent.  The `bug.sh` script attempts to process files within a specified directory but lacks error handling for these scenarios.  The `bugSolution.sh` script provides a corrected version that addresses these issues.

## Bug Description

The original script (`bug.sh`) doesn't check if the directory exists or contains any files before attempting to iterate through it. This leads to unexpected behavior (empty output) or errors if the target directory is empty or does not exist.

## Solution

The solution script (`bugSolution.sh`) incorporates checks to ensure the directory exists and is not empty.  It gracefully handles these conditions to prevent errors and provide more robust functionality.