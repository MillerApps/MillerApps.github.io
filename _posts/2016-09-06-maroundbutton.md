---
layout: post
title:  "MARoundButton"
date:   2016-09-06 11:50:00
categories: open source, swift
comments: True
author: Tyler Miller
permalink: maroundbutton
---

**Updated**

### MARoundButton 
MARoundButton is a simple UIButton subclass written in ~~Swift 2.2~~ Swift 3.0 that allows for easy rounding of UIButtons. MARoundButton supports Interface Builder as well as directly through code. MARoundButton is my first open sourced project, albeit a simple one. If you are interested in using MARoundButton it can be found on [Github](https://github.com/MillerApps/MARoundButton){:target="_blank"}. 

#### Installation

MARoundButton is available through [CocoaPods](http://cocoapods.org){:target="_blank"}. To install
it, simply add the following line to your Podfile:

```ruby
pod 'MARoundButton'
```

#### How To Use

MARoundButton can be used through StoryBoards by adding a UIButton to the View and under the identity inspector select MARoundButton as the class and the module. All the properties can be changed within the attributes inspector tab. 

MARoundButton can also be used through code just like a normal UIButton. Just remember to set the Round button properties. 

#### StoryBoard Example

![StoryBoard](http://g.recordit.co/wiUK3mqQ1Z.gif)

***New content***

#### Swift Example

First import MARoundButton

```swift
import MARoundButton
```
Next setup a button similar to the following:

```swift
let btn = MARoundButton(frame: CGRect(x: 20, y: 40, width: 50, height: 50))
btn.backgroundColor = UIColor.brown
btn.setTitle("BTN", for: .normal)
btn.tintColor = UIColor.white
        
// MARoundButton
btn.borderColor = UIColor.black
btn.border = 2
btn.corner = 23
btn.borderAlpha = 0.5
        
self.view.addSubview(btn)
```

## TODO
* Finish documentation
* Add a demo project
* Add code demo for Objective-C
	 
#### Author

Tyler Miller

#### License

MARoundButton is available under the MIT license. See the LICENSE [file](https://github.com/MillerApps/MARoundButton/blob/master/LICENSE){:target="_blank"} for more info.

#### Info 
[![CI Status](http://img.shields.io/travis/MillerApps/MARoundButton.svg?style=flat)](https://travis-ci.org/MillerApps/MARoundButton){:target="_blank"}
[![Version](https://img.shields.io/cocoapods/v/MARoundButton.svg?style=flat)](http://cocoapods.org/pods/MARoundButton){:target="_blank"}
[![License](https://img.shields.io/cocoapods/l/MARoundButton.svg?style=flat)](http://cocoapods.org/pods/MARoundButton){:target="_blank"}
[![Platform](https://img.shields.io/cocoapods/p/MARoundButton.svg?style=flat)](http://cocoapods.org/pods/MARoundButton){:target="_blank"}



