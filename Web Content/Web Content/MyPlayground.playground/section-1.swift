// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var anotherStr = "Rob"

var thirdStr = str + anotherStr

for character in str {
    
    println(character)
}

var newString = "Test String" as NSString

var subString = (str as NSString).substringToIndex(6)

var endingString = (str as NSString).substringWithRange(NSRange(location: 5, length: 4))

if newString.containsString("test") {
    
    // do something
}

newString.componentsSeparatedByString(" ")

newString.uppercaseString

newString.lowercaseString

