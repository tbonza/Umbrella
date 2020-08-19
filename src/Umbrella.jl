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


end # module
