
# EasyAutoLayout

[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

## Intro
EasyAutoLayout is a small framework built using the ideas presented in the article called 
[Autolayout Micro DSL by Chris Eidhof](https://chris.eidhof.nl/post/micro-autolayout-dsl/).

I like to use this on most of my projects, it uses very little code and is a fast way to work with
view coding without all the autolayout boiler plate and without having to add big external dependencies.

## Usage:

```swift

    import EasyAutoLayout
    
    let view = UIView()
    let label = UILabel()
    view.addSubview(label, constraints: [
       equal(\.leadingAnchor),
       equal(\.topAnchor, \.safeAreaLayoutGuide.topAnchor),
       equal(\.trailingAnchor)
    ])
    
```

Check the original article for more usages and code explanation.

## Swift Package Manager

_Note: Instructions below are for using **SwiftPM** without the Xcode UI. It's the easiest to go to 
your Project Settings -> Swift Packages and add it from there._

To integrate using Apple's Swift package manager, without Xcode integration, add the following as
a dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/garrefa/EasyAutoLayout.git")
```

and then specify `"EasyAutoLayout"` as a dependency of the Target in which you wish to use it.
