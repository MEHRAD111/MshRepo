#!/bin/bash
# Calculator for msh

echo "Welcome to calculator! Let's start"

read -p "Which operation do you want to do? (+ - * /): " operation
read -p "Please give me the first number: " num1
read -p "Please give me the second number: " num2

case $operation in
  -)
    echo $((num1 - num2))
    ;;
  +)
    echo $((num1 + num2))
    ;;
  \*)
    echo $((num1 * num2))
    ;;
  /)
    echo $((num1 / num2))
    ;;
  *)
    echo "Invalid operation"
    ;;
esac
