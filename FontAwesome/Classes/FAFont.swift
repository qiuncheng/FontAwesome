//
//  Font.swift
//  FontAwesome
//
//  Created by qiuncheng on 2020/2/6.
//

import UIKit

public enum FAFont {
    case brands
    case regular
    case solid
    
    var name: String {
        switch self {
        case .brands:
            return "FontAwesome5Brands-Regular"
        case .regular:
            return "FontAwesome5Free-Regular"
        case .solid:
            return "FontAwesome5Free-Solid"
        }
    }
    
    var familyName: String {
        switch self {
        case .brands:
            return "Font Awesome 5 Brands"
        case .regular:
            return "Font Awesome 5 Free"
        case .solid:
            return "Font Awesome 5 Free"
        }
    }
}

struct FontAwesomeName {
    /// name of `FontAwesome` font.
    static let brands = "Font Awesome 5 Brands-Regular-400"
    static let regular = "Font Awesome 5 Free-Regular-400"
    static let solid = "Font Awesome 5 Free-Solid-900"
}
