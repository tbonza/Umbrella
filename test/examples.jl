using Test
using Umbrella

@testset "examples for helloJulia" begin

    text = ["hello", "good day", "good night"]
    regexes = [Regex(i) for i in ["hello","good"]]

    @test example1(text, regexes)
    @test example2(text[1], regexes)

end
