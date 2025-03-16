print("-----------------------------------------------------------------")
print("------------------rock, paper, scissors by F3v1------------------")
print("-----------------------------------------------------------------")
print("")

math.randomseed(os.time())

local choices = { "rock", "paper", "scissors" }

function get_computer_choice()
    return choices[math.random(1, 3)]
end

function determine_winner(player, computer)
    if player == computer then
        return "It's a tie!"
    elseif (player == "rock" and computer == "scissors") or
           (player == "paper" and computer == "rock") or
           (player == "scissors" and computer == "paper") then
        return "You win!"
    else
        return "Computer wins!"
    end
end

while true do
    print("\nChoose: rock, paper, or scissors (or type 'exit' to quit)")
    local player_choice = io.read():lower()
    
    if player_choice == "exit" then
        print("Thanks for playing!")
        break
    elseif player_choice ~= "rock" and player_choice ~= "paper" and player_choice ~= "scissors" then
        print("Invalid choice. Try again!")
    else
        local computer_choice = get_computer_choice()
        print("Computer chose: " .. computer_choice)
        print(determine_winner(player_choice, computer_choice))
    end
end
