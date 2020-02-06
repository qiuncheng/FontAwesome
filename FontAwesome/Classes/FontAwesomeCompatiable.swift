//
//  FontAwesomeCompatiable.swift
//  FontAwesome
//
//  Created by qiuncheng on 2020/2/6.
//

import Foundation

public protocol FontAwesomeCompatiable {
    associatedtype FontAwesomeCompatiable
    var fa: FontAwesomeCompatiable { get }
}

public extension FontAwesomeCompatiable {
    var fa: FontAwesomeKit<Self> {
        get { return FontAwesomeKit(self) }
    }
}

public final class FontAwesomeKit<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}
