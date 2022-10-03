//
//  RandomPictureUI.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/10/01.
//

import Foundation
import UIKit

extension RandomPictureVC {
    func setupUI() {
        
        // background
        self.view.backgroundColor = .lightGray
        
        // textField
        let textField: UITextField = {
            let textField = UITextField()
            textField.text = Local.Phrase.clickFoodButton
            textField.textAlignment = .center
            textField.backgroundColor = .gray
            return textField
        }()
        
        self.view.addSubview(textField)
        
        textField.snp.makeConstraints {
            $0.width.equalTo(self.view)
            $0.height.equalTo(70)
            $0.top.equalTo(self.view).offset(130)
        }
        
        // imageView
        let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = .add
            return imageView
        }()
        
        self.view.addSubview(imageView)
        
        imageView.snp.makeConstraints {
            $0.width.equalTo(250)
            $0.height.equalTo(250)
            $0.centerX.equalTo(self.view.center.x)
            $0.centerY.equalTo(self.view.center.y)
        }
        
        // buttons in stackView
        let findInCurrentLocationButton: UIButton = {
            let button = UIButton()
            button.tintColor = .blue
            button.backgroundColor = .black
            button.layer.cornerRadius = 10
            
            button.setTitle(Local.Phrase.findInCurrentLocation, for: .normal)
            return button
        }()
        
        findInCurrentLocationButton.snp.makeConstraints {
            $0.width.equalTo(150)
        }
        
        let findInAnotherLocationButton: UIButton = {
            let button = UIButton()
            button.tintColor = .green
            button.backgroundColor = .black
            button.layer.cornerRadius = 10
            button.setTitle(Local.Phrase.findInAnotherLocation, for: .normal)
            return button
        }()
        
        findInAnotherLocationButton.snp.makeConstraints {
            $0.width.equalTo(150)
        }
        
        // spacer in stackView
        let spacer: UIView = {
            let view = UIView()
            view.backgroundColor = .blue
            return view
        }()
        
        spacer.snp.makeConstraints {
            $0.width.equalTo(30)
        }
        
        let spacer1: UIView = {
            let view = UIView()
            view.backgroundColor = .blue
            return view
        }()
        
        spacer1.snp.makeConstraints {
            $0.width.equalTo(30)
        }
        
        let spacer2: UIView = {
            let view = UIView()
            view.backgroundColor = .blue
            return view
        }()
        
        spacer2.snp.makeConstraints {
            $0.width.equalTo(30)
        }
        
        // stackView
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.backgroundColor = .darkGray
            stackView.axis = .horizontal
            stackView.alignment = .center
            stackView.distribution = .equalSpacing
            stackView.spacing = 0
            return stackView
        }()
        
        
        stackView
            .addArrangedSubview(spacer)
        stackView.addArrangedSubview(findInCurrentLocationButton)
        stackView
            .addArrangedSubview(spacer1)
        stackView.addArrangedSubview(findInAnotherLocationButton)
        stackView
            .addArrangedSubview(spacer2)
        
        self.view.addSubview(stackView)
        
//        findInCurrentLocationButton.snp.makeConstraints {
//            $0.edges.equalToSuperview().inset(-5)
//        }
//        findInAnotherLocationButton.snp.makeConstraints {
//            $0.edges.equalToSuperview().inset(-5)
//        }
        
        stackView.snp.makeConstraints {
            $0.leading.equalTo(self.view)
            $0.trailing.equalTo(self.view)
            $0.bottom.equalTo(-100)
            $0.height.equalTo(40)
            
        }
        

    }
}
