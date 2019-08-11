#!/usr/bin/env julia

println("hello world")

function logistic(number)
    # If you want to have ℯ(euler number) you should write \euler + tab
    value = 1 / (1+ ℯ^(-number))
end

for i in 1:10
    output = logistic(i)
    println(output)
end
