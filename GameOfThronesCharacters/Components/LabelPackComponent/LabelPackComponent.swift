//
//  LabelPackComponent.swift
//  AppPermissions
//
//  Created by Bengi on 30.09.2021.
//

import Foundation
import UIKit

class LabelPackComponent: GenericBaseView<LabelPackComponentData> {
    
    private lazy var mainStackView: UIStackView = {
        
        let stackView = UIStackView(arrangedSubviews: [firstName, lastName, fullName, title, family])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Sansa"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.contentMode = .center
        label.textAlignment = .center
        label.font = FontManager.regular(18).value
        return label
    }()

    private lazy var lastName: UILabel = {
        labelPackAttributes()
    }()
    
    private lazy var fullName: UILabel = {
        labelPackAttributes()
    }()

    private lazy var title: UILabel = {
        labelPackAttributes()
    }()
        
    private lazy var family: UILabel = {
        labelPackAttributes()
    }()
    
    func labelPackAttributes() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = " "
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.contentMode = .center
        label.textAlignment = .center
        label.font = FontManager.regular(18).value
        return label
    }
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
    }
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    func addUserComponents() {
        addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        
        guard let data = returnData() else{ return }
        
        firstName.text = data.firstName
        lastName.text = data.lastName
        fullName.text = data.fullName
        title.text = data.title
        family.text = data.family
    }
}
