//
//  MyProtocol.swift
//  ProtocolExtensionSwiftSegfault
//
//  Created by Marcus Kida on 2/11/16.
//  Copyright © 2016 Marcus Kida. All rights reserved.
//

import Foundation

@objc public enum MyEnum: Int {
    case oneValue = 0, anotherValue = 1
}

@objc public protocol MyProtocol {
    var theEnum: MyEnum { get }
}

public protocol MySecondProtocol: MyProtocol {

}

public extension MySecondProtocol {
    var theEnum: MyEnum {
        get { return .oneValue }
    }
}
