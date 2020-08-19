module Umbrella

export example1

function example1(text::Array{String,1}, regexes::Array{Regex,1})::Bool
    for t in text
        for r in regexes
            if occursin(r,t)
            end
        end
    end
    return true
end

function __init__()
    regexes = [Regex(i) for i in readlines("yelp_example.regex")]
    text = readlines("yelp_example.txt")
end

end # module
