#!/usr/bin/env julia

# For capture data you could use readline() function

# This render a menu with options to do any arithmetic operation
function menu()
    println("Please, select an option")
    println("1. Addition")
    println("2. Subtraction")
    println("3. Multiplication")
    println("4. Division")
    println("q -> Exit")
    selection = readline()
    return selection
end

function addition(number1::Int, number2::Int)
    return number1 + number2
end

subtraction(number1::Int, number2::Int) = number1 - number2

function multiplication(number1, number2)
    return number1 * number2
end

division(number1, number2) = number1 / number2

function select_operation(option, number1, number2)
    response = "upss there is an error, I'm sorry :'("

    if option == "1"
        response = addition(number1, number2)
    elseif option == "2"
        response = subtraction(number1, number2)
    elseif option == "3"
        response = multiplication(number1, number2)
    elseif option == "4"
        if number2 == 0
            response = "Number2 musn't be zero"
        else
            response = division(number1, number2)
        end 
    end
    return response
end

option = menu()
while option != "q"
    print("Number 1: ")
    number1 = parse(Int, readline())
    print("Number 2: ")
    number2 = parse(Int, readline())

    response = select_operation(option, number1, number2)
    
    println("****************")
    println(string("Response: ", response))
    println("****************")
    # To understant (global ...), I should find what is scoping in variables
    global option = menu()
end