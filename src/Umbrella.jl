module Umbrella

using Distributed
using Threads

export example1, dist_example2

function example1(text::Array{String,1}, regexes::Array{Regex,1})::Bool
    for t in text
        for r in regexes
            if occursin(r,t)
            end
        end
    end
    return true
end

function example2(text::String, regexes::Array{Regex,1})::Bool
    for r in regexes
        if occursin(r,text)
        end
    end
    return true
end

function dist_example2(text::Array{String,1}, regexes::Array{Regex,1}, batch::Int)::Array{Bool,1}
    return pmap(x -> example2(x, regexes), text, batch_size=batch, on_error=ex->false)
end

function example3(text::Array{String,1}, regexes::Array{Regex,1})::Bool
    @threads for t in text
        for r in regexes
            if occursin(r,t)
            end
        end
    end
    return true
end

end # module
