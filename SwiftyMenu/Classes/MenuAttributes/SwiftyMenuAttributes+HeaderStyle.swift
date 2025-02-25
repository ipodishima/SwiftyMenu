//
//  SwiftyMenuAttributes+HeaderStyle.swift
//
//  Copyright (c) 2019-2021 Karim Ebrahem (https://twitter.com/k_ebrahem_)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation
import UIKit

public extension SwiftyMenuAttributes {

    /** Describes the style for header of the menu */
    enum HeaderStyle {

        /** Row with background color */
        case value(backgroundColor: UIColor, contentHorizontalAlignment: UIControl.ContentHorizontalAlignment = Self.defaultContentHorizontalAlignment, height: Int)

        var headerStyleValues: (backgroundColor: UIColor, contentHorizontalAlignment: UIControl.ContentHorizontalAlignment, height: Int) {
            switch self {
            case let .value(backgroundColor, contentHorizontalAlignment, height):
                return (backgroundColor: backgroundColor, contentHorizontalAlignment: contentHorizontalAlignment, height: height)
            }
        }

        public static var defaultContentHorizontalAlignment: UIControl.ContentHorizontalAlignment {
            if #available(iOS 11.0, *) {
                return .leading
            } else {
                return .left
            }
        }
    }
}
