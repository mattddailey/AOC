//
//  Day1.swift
//  AdventOfCode
//
//  Created by Matt Dailey on 12/1/24.
//

import ArgumentParser

struct Day1: AsyncParsableCommand {
  static let configuration = CommandConfiguration(abstract: "Advent of Code - December 01, 2024")
                                                  
  func part1(input: String) throws -> String {
    let lists = lists(input: input)

    return String(
      lists.0
        .enumerated()
        .reduce(into: 0) { result, enumeration in
          result += abs(enumeration.element - lists.1[enumeration.offset])
        }
    )
  }
  
  func part2(input: String) throws -> String {
    let lists = lists(input: input)
    
    var counts: [Int: Int] = [:]
    lists.1.forEach { counts[$0, default: 0] += 1 }

    return String(
      lists.0
        .reduce(into: 0) { result, distance in
          result += distance * (counts[distance, default: 0])
        }
    )
  }
  
  private func lists(input: String) -> ([Int], [Int]) {
    var list1 = [Int]()
    var list2 = [Int]()
    
    input
      .components(separatedBy: .newlines)
      .forEach { pair in
        pair
          .components(separatedBy: .whitespaces)
          .compactMap { Int($0) }
          .enumerated()
          .forEach { (index, distance) in
            if index % 2 == 0 {
              list1.append(distance)
            } else {
              list2.append(distance)
            }
          }
      }

    list1 = list1.sorted()
    list2 = list2.sorted()

    return (list1, list2)
  }
  
  mutating func run() async throws {
    print("Part 1: \(try part1(input: ""))")
    print("Part 2: \(try part2(input: ""))")
  }
}
