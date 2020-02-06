/// Reference: https://github.com/qiuncheng/FontAwesomeKit.Swift/blob/master/FontAwesomeKit/FontLoader.swift
import UIKit

public class FontLoader {
    static let loadAllFont: Void = {
        debugOn("start load fonts")
        do {
            try FontLoader.loadFont(FontAwesomeName.regular)
            try FontLoader.loadFont(FontAwesomeName.brands)
            try FontLoader.loadFont(FontAwesomeName.solid)
            debugOn("load fonts successfully")
        } catch {
            debugOn(error)
        }
        return
    }()
    
    public static func loadFonts() {
        _ = FontLoader.loadAllFont
    }
    
    enum LoaderError: Error {
        case notFound
        case createFailed
    }
    
    /// Load font from current framework or cocoapods bundle.
    ///
    /// - Parameter name: font name, `FontAwesome` is default.
    class func loadFont(_ name: String) throws {
        let bundle = Bundle(for: FontLoader.self)
        guard let path = bundle.path(forResource: name, ofType: "otf") else {
            throw LoaderError.notFound
        }
        
        let url = URL(fileURLWithPath: path)
        let data = try Data(contentsOf: url)
        guard let provider = CGDataProvider(data: data as CFData) else {
            throw LoaderError.createFailed
        }
        guard let font = CGFont(provider) else { return }
        
        if !CTFontManagerRegisterGraphicsFont(font, nil) {
            throw LoaderError.createFailed
        }
    }
}
