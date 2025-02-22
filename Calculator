Restart = "Y"

while Restart == "Y" or Restart == "y" do
    print("------------------------------------------------------")
    print("------------------Calculator by F3v1------------------")
    print("------------------------------------------------------")
    print("")
    
    io.write("Enter Number1: ")
    Number1 = tonumber(io.read())  -- Convert input to number
    io.write("Enter Number2: ")
    Number2 = tonumber(io.read())  -- Convert input to number
    io.write("Enter Operator: ")
    Operator = io.read()
    print("")
    
    if Operator == "+" then
        Answer = Number1 + Number2
        print("You added " .. Number1 .. " to " .. Number2 .. "!")
        print("↓↓↓")
        print("The answer is " .. Answer .. "!")
    end
    
    if Operator == "*" then
        Answer = Number1 * Number2
        print("You multiplied " .. Number1 .. " to " .. Number2 .. "!")
        print("↓↓↓")
        print("The answer is " .. Answer .. "!")
    end
    
    if Operator == "-" then
        Answer = Number1 - Number2
        print("You subtracted " .. Number1 .. " with " .. Number2 .. "!")
        print("↓↓↓")
        print("The answer is " .. Answer .. "!")
    end
    
    if Operator == "/" then
        if Number2 ~= 0 then
            Answer = Number1 / Number2
            print("You divided " .. Number1 .. " by " .. Number2 .. "!")
            print("↓↓↓")
            print("The answer is " .. Answer .. "!")
        else
            print("Error! Division by zero is not allowed.")
        end
    end
    
    if Operator == "^" then
        Answer = Number1 ^ Number2
        print("You took " .. Number1 .. " to the power of " .. Number2 .. "!")
        print("↓↓↓")
        print("The answer is " .. Answer .. "!")
    end
    
    if Operator == "sqrt" then
        if Number1 >= 0 then
            Answer = math.sqrt(Number1)
            print("You took the square root of " .. Number1 .. "!")
            print("↓↓↓")
            print("The answer is " .. Answer .. "!")
        else
            print("Error! Cannot take the square root of a negative number.")
        end
    end
    print("")
    
    io.write("Restart? (Y/N) ")
    Restart = io.read()
end

if Restart == "N" or Restart == "n" then
    print("The program is over!")
end
