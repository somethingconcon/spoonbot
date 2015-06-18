import Spoonbot

command "funky", &("#{&1}: cold medina!") 

command "say (.*)", fn (speaker, args) -> 
    Enum.at(args, 0) 
end

command "heya", fn (speaker) -> 
    greetings = [
        "yo", "backatcha", "aight", "hi", "g'day",
    ]
    greeting = Enum.at greetings, round(:random.uniform ((Enum.count greetings) -1))
    "#{greeting} #{speaker}" 
end

command "long’s mom", fn(speaker) ->
    "You said it, #{speaker}"
end
