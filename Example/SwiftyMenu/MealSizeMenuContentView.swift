//
//  MealSizeMenuContentView.swift
//  SwiftyMenu_Example
//
//  Created by Marian Paul on 07.11.22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import SnapKit
import UIKit

final class MealSizeMenuContentView: UIView, UIContentView {

    init(configuration: MealSizeMenuContentConfiguration) {
        super.init(frame: .zero)

        setupAllViews()

        apply(configuration: configuration)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Internal

    let mealSizeImageView = UIImageView()
    let wordLabel = UILabel()

    var configuration: UIContentConfiguration {
        get {
            currentConfiguration
        }
        set {
            guard let newConfiguration = newValue as? MealSizeMenuContentConfiguration else {
                return
            }

            apply(configuration: newConfiguration)
        }
    }

    // MARK: Private

    private var currentConfiguration: MealSizeMenuContentConfiguration!

    private func setupAllViews() {
        addSubview(mealSizeImageView)
        mealSizeImageView.snp.makeConstraints {
            $0.leading.top.bottom.equalToSuperview()
            $0.width.equalTo(mealSizeImageView.snp.height)
        }

        addSubview(wordLabel)
        wordLabel.snp.makeConstraints {
            $0.trailing.top.bottom.equalToSuperview()
            $0.leading.equalTo(mealSizeImageView.snp.leading)
        }
    }

    private func apply(configuration: MealSizeMenuContentConfiguration) {
        guard currentConfiguration != configuration else {
            return
        }

        currentConfiguration = configuration

        wordLabel.text = configuration.text
        wordLabel.textColor = configuration.textColor
        wordLabel.textAlignment = configuration.textAlignment

        mealSizeImageView.image = configuration.mealSizeImage
    }
}
