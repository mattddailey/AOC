//
//  AdventOfCodeDay.swift
//  AdventOfCode
//
//  Created by Matt Dailey on 12/1/24.
//

import ArgumentParser
import Foundation

package protocol AdventOfCodeDay: AsyncParsableCommand {
  var inputPath: String? { get }
  func part1(input: String) throws -> String
  func part2(input: String) throws -> String
}

package extension AdventOfCodeDay {
  var input: String {
    get throws {
      guard let inputPath else {
        throw InputNotFoundError()
      }
      
      return try String(contentsOfFile: inputPath)
    }
  }
}
