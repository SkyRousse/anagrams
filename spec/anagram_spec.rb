require("rspec")
require("anagram")

describe("String#anagram") do
  it("takes two words as input and checks if they are anagrams") do
    expect("potato".anagram("octopus")).to(eq(false))
  end
  it("takes two words as input and checks if they are anagrams") do
    expect("sunlight".anagram("hustling")).to(eq(true))
  end
end
