#!/bin/bash

my_function () {
    echo "Some Results"
    return 55
}

## Function that always succeeds
succeed() {
  echo "This function succeeds"
  return 0
}

## Function that always fails
fail() {
  echo "This function fails"
  return 1
}

my_function 
echo "Show Exit Status from this function $?"

## Call the functions and check their return codes
succeed
echo "Return code of succeed: $?"

fail
echo "Return code of fail: $?"