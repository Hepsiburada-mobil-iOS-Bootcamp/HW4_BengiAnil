//
//  CustomTableViewCell.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import UIKit

class CustomTableViewCell: BaseTableViewCell {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [imageComponent, labelComponent ])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alignment = .center
        view.distribution = .fill
        view.axis = .horizontal
        view.spacing = 10
        return view
    }()
    
    private lazy var imageComponent: CustomImageViewComponentContainer = {
        let view = CustomImageViewComponentContainer()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.layer.cornerRadius = 4
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 4)
        view.layer.shadowRadius = 4
        view.layer.shadowOpacity = 1
        return view
    }()
    
    private lazy var labelComponent: LabelPackComponent = {
        let view = LabelPackComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func addMajorViews() {
        super.addMajorViews()
        addInfoComponents()
    }
    
    private func addInfoComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
        ])
    }
    
    func setData(by value: GenericDataProtocol) {
        guard let data = value as? CustomTableViewCellData else { return }
        labelComponent.setData(by: data.labelInfo)
        imageComponent.setData(by: data.imageInfo)
    }
}
