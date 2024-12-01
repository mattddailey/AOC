import Testing
@testable import AdventOfCode2024

struct Day1Tests {
  let day1 = Day1()
  
  let input =
    """
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
    """
  
  @Test func part1() async throws {
    try #expect(day1.part1(input: input) == "11")
  }
  
  @Test func part2() async throws {
    try #expect(day1.part2(input: input) == "31")
  }
}


