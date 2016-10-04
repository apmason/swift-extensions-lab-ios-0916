//
//  Extensions.swift
//  Extensions
//
//  Created by Alexander Mason on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    func whisper() -> String {
        return self.lowercased()
    }
}

extension String {
    func shout() -> String {
        return self.uppercased()
    }
}

extension String {
    var pigLatin: String {
        if self.characters.count == 1 {
            return String(self.characters)
        } else if self.characters.count > 1 {
            let charArray = self.components(separatedBy: " ")
            var returnString = ""
            for var i in charArray {
                let firstLetter = i.characters.popFirst()
                let lowerFirstLetter = String(describing: firstLetter!).lowercased()
                i.append(lowerFirstLetter)
                i.append("a")
                i.append("y")
                
                let first = i.startIndex
                
                i = String(i.characters.first!).uppercased() + String(i.characters.dropFirst()) + " "
                
                
                returnString += i
                print(returnString.characters.count)
                //returnString.characters.removeLast()
                print(returnString.characters.count)

            }
            returnString.characters.popLast()
            return returnString
        }
        return "String"
    }
}
extension String {
    var points: Int {
        let lowercase = self.lowercased()
        var score = 0
        for char in lowercase.characters {
            switch char {
            case "q", "w", "r", "t", "p", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m":
                score += 1
            case "e", "u", "i", "o", "a", "y":
                score += 2
            default:
                score += 0
            }
        }
        return score
    }
}

extension Int {
    func half() -> Int {
        return (self / 2)
    }
}

extension Int {
    func isDivisible(by number: Int) -> Bool {
        if (self % number) == 0 {
            return true
        } else {
            return false
        }
    }
}

extension Int {
    var squared: Int {
        return self * self
    }
}

extension Int {
    var halved: Int {
        return self / 2
    }
}

extension String {
    var unicornLevel: String {
        print("Amount of incoming string characters = \(self.characters.count)")
        var unicornString: String = ""
        for i in self.characters {
            if i != " " {
            unicornString.characters.append("🦄")
            }
        }
        print("\(unicornString.characters.count) + unicorn String YOOOOO")
        return unicornString
    }
}
