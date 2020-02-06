//
//  UILabel+FontAwesome.swift
//  FontAwesome
//
//  Created by qiuncheng on 2020/2/6.
//

import UIKit

extension UILabel: FontAwesomeCompatiable { }

public extension FontAwesomeKit where Base: UILabel {
   
    var text: FontAwesome? {
        get {
            let objc = objc_getAssociatedObject(base, &Key.keyOFUILabel) as? AssociatedObject
            return objc?.value as? FontAwesome
        }
        set {
            base.text = newValue?.unicode
            let objc = AssociatedObject(value: newValue)
            objc_setAssociatedObject(base, &Key.keyOFUILabel, objc, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    func setFont(_ font: FAFont, size: CGFloat) {
        FontLoader.loadFonts()
        base.font = UIFont(name: font.name, size: size)
    }
}
