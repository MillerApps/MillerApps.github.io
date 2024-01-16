---
layout: post
title:  "Swift KeyPaths"
date:   2024-01-15 5:36:45
categories: neat, things new to me, software, swift, keypath
comments: True
author: Tyler Miller
permalink: swift-keypaths
---

So what is a KeyPath in Swift? Lets try to answer this in a simply way, note this will not be in depth, but rather a very basic rundown of what a KeyPath is. 


> 📘 Info
>  Please Note: I Am not an expert and this is more or less a way for me to help cement the basics of this concept in my own mind. If this is of any Value to you, thats just an added bonus! 
{: .blockquote-info }


To begin Apple defines a keyPath as follows:
> **A key path from a specific root type to a specific resulting value type.**
>


Here's a bit more detailed definition:
> **A reference ("path") to a property on a give Type. In Swift a 'KeyPath' is expressed as '*\Type.property*', '*Type*' is the struct or class. And '*property*' would be what you want to reference**
>


 ```swift

struct Superhero {
    var alias: String
    var superpower: String
}

// Defining key paths for 'alias' and 'superpower' properties of the Superhero struct.
// These constants allow indirect reference to the properties of any Superhero instance.
let aliasKeyPath = \Superhero.alias
let superpowerKeyPath = \Superhero.superpower

 ```

> We just created a simple struct and set constants which hold the KeyPath.

```swift

// Creating an instance of Superhero.
// 'superhero' is now an object with 'alias' and 'superpower' properties.
var superhero = Superhero(alias: "Spider-Bro", superpower: "Web-slinging")

// Accessing property values using the key paths defined earlier.
// This demonstrates how key paths can be used to read values from specific properties.
let superheroAlias = superhero[keyPath: aliasKeyPath] // Retrieves 'alias' value: "Spider-Bro"
let superheroPower = superhero[keyPath: superpowerKeyPath] // Retrieves 'superpower' value: "Web-slinging"

// Printing the accessed values.
// It shows how to use the key paths to get property values in a readable and reusable manner.
print(superheroAlias, superheroPower)

// Accessing properties using shorthand key path syntax directly.
// This is a more concise way to use key paths, especially when they are not reused elsewhere.
print(superhero[keyPath: \.alias], superhero[keyPath: \.superpower])

```

 > We instantiate a Superhero struct here, then we access the values in two manners.


 ```swift
// Modifying a property value using its key path.
// This line demonstrates how key paths can also be used to set new values for specific properties.
superhero[keyPath: \.alias] = "Spider-Pig" // Changes 'alias' property to 'Spider-Pig'

// Printing the updated alias to demonstrate the change.
print(superhero[keyPath: \.alias])

 ```


 > Finally, we see how to modify the property values


 These are the very basics of KeyPaths in Swift. I believe this should be enough to at least get you familiar with the concept to the point where SwiftUI will make a tad bit more sense when first getting started.