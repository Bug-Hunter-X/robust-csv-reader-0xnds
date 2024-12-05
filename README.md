# Silent Failure in R's read.csv() Function

This repository demonstrates a common, yet subtle, error in R: the silent failure of `read.csv()` when the specified file does not exist.  This can lead to difficult-to-debug issues later in the code execution because the error isn't immediately apparent.

The `bug.r` file contains the erroneous code. The `bugSolution.r` file provides a corrected version that handles the file-not-found scenario gracefully.

## Problem

The `read.csv()` function in R will not throw an error or warning if the specified file does not exist. Instead, it will silently return a NULL object. This can be problematic, especially in larger scripts where the absence of an error might go unnoticed.

## Solution

The solution involves using `file.exists()` to check if the file exists before attempting to read it. If the file doesn't exist, an appropriate error message is produced, preventing unexpected behavior.