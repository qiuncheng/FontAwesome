//
//  Log.swift
//  FontAwesome
//
//  Created by qiuncheng on 2020/2/6.
//

import Foundation


func debugOn(file: StaticString = #file,
             function: StaticString = #function,
             line: Int = #line,
             _ message: Any...)
{
    #if DEBUG
    print("#FONTAWESOME# DEBUG:", file, function, "line:", line, message)
    #endif
}
