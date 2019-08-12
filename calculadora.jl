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

# You could add the type of data in the parameters.
function addition(number1::Int, number2::Int)
    return number1 + number2
end

# Also you could define a function in a line and send the parameters 
# with the expected data type
subtraction(number1::Int, number2::Int) = number1 - number2

# But isn't necessary to define the type of data in the parameters,
# you could only send it 
function multiplication(number1, number2)
    return number1 * number2
end

# It's also not necessary in the functions of a line.
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
    # If you want return something you should use return expression.
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
    # To understant (global ...), is necessary to find what is scoping in variables
    global option = menu()
end