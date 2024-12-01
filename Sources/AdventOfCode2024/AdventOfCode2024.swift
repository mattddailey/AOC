//
//  AdventOfCode2024.swift
//  AdventOfCode
//
//  Created by Matt Dailey on 12/1/24.
//

import ArgumentParser

@available(macOS 10.15, macCatalyst 13, iOS 13, tvOS 13, watchOS 6, *)
@main
struct AdventOfCode2024: AsyncParsableCommand {
  static let configuration = CommandConfiguration(
    abstract: "Advent of Code 2024",
    subcommands: [
      Day1.self,
      Day2.self
    ]
  )
}
