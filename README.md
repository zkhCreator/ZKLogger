# ZKLogger

[![CI Status](https://img.shields.io/travis/zkhCreator/ZKLogger.svg?style=flat)](https://travis-ci.org/zkhCreator/ZKLogger)
[![Version](https://img.shields.io/cocoapods/v/ZKLogger.svg?style=flat)](https://cocoapods.org/pods/ZKLogger)
[![License](https://img.shields.io/cocoapods/l/ZKLogger.svg?style=flat)](https://cocoapods.org/pods/ZKLogger)
[![Platform](https://img.shields.io/cocoapods/p/ZKLogger.svg?style=flat)](https://cocoapods.org/pods/ZKLogger)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### Cocoapods

ZKLogger is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZKLogger'
```

### Swift Package Manager

To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter https://github.com/zkhCreator/ZKLogger to the text field, set version to Major 1.2.0

## Update To Trunk

1. update code
2. merge to master
3. update podspec version
4. run `pod trunk push ZKLogger.podspec --allow-warnings`

PS: if trunk session not exist, you can register by `pod trunk register your_mail your_name`

## Changelog

### 1.2.1

support SPM

### 1.2.0

support closure for aop

### 1.1.0

support domain for filter log

### 1.0.0

create base framework

## Author

zkhCreator, zkh90644@gmail.com

## License

ZKLogger is available under the MIT license. See the LICENSE file for more info.
