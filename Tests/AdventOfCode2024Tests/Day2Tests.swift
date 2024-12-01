import Testing
@testable import AdventOfCode2024

struct Day2Tests {
  let day2 = Day2()
  
  let input =
    """
    """
  
  @Test func part1() async throws {
    try #expect(day2.part1(input: input) == "")
  }
  
  @Test func part2() async throws {
    try #expect(day2.part2(input: input) == "")
  }
}
