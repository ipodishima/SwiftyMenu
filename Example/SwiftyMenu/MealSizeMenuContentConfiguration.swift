//
//  MealSizeMenuContentConfiguration.swift
//  SwiftyMenu_Example
//
//  Created by Marian Paul on 07.11.22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import SwiftyMenu
import UIKit

struct MealSizeMenuContentConfiguration: UIContentConfiguration, Hashable {

    init(item: MealSize,
         isSelected: Bool,
         attributes: SwiftyMenuAttributes) {
        text = item.displayableValue
        textColor = attributes.textStyle.textStyleValues.color
        font = attributes.textStyle.textStyleValues.font
        textAlignment = attributes.textStyle.textStyleValues.alignment
        let imageName: String
        switch item.id {
        case 1:
            imageName = "person"
        default:
            imageName = "person.\(item.id)"
        }

        mealSizeImage = UIImage(systemName: imageName)
    }

    let text: String
    let textColor: UIColor?
    let font: UIFont?
    let textAlignment: NSTextAlignment
    let mealSizeImage: UIImage?

    func makeContentView() -> UIView & UIContentView {
        MealSizeMenuContentView(configuration: self)
    }

    func updated(for state: UIConfigurationState) -> Self {
        self
    }
}
