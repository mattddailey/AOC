//
//  Day2.swift
//  AdventOfCode
//
//  Created by Matt Dailey on 12/2/24.
//

import AdventOfCodeShared
import ArgumentParser
import Foundation

struct Day2: AdventOfCodeDay {
  static let configuration = CommandConfiguration(abstract: "Advent of Code - December 02, 2024: Historian Hysteria")
  
  var inputPath: String? {
    Bundle.module.path(forResource: "Day2", ofType: ".txt")
  }
                                                  
  func part1(input: String) throws -> String {
    ""
  }
  
  func part2(input: String) throws -> String {
    ""
  }
  
  mutating func run() async throws {
    print("Part 1: \(try part1(input: input))")
    print("Part 2: \(try part2(input: input))")
  }
}
