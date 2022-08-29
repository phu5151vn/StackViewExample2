//
//  MainViewController.swift
//  StackViewExample2
//
//  Created by phu.nguyen5 on 29/08/2022.
//

import UIKit

class MainViewController: UIViewController {
    var mainStackView: UIStackView = UIStackView()
    var stackView1: UIStackView = UIStackView()
    var imageView: UIImageView = UIImageView()
    
    var stackView2: UIStackView = UIStackView()
    var txtViewDescription: UITextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.autolayoutMainStackView()
        // Do any additional setup after loading the view.
        self.autolayoutStackView1()
        self.autolayoutTextViewDescription()
        self.autolayoutStackView2()
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func autolayoutMainStackView() {
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        //leadingAnchor && leftAnchor
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        
        mainStackView.axis = .vertical
        mainStackView.alignment = .fill
        mainStackView.distribution = .fill
        
        mainStackView.spacing = 10
//        mainStackView.backgroundColor = UIColor.green
        
    }
    
    private func autolayoutStackView1() {
        mainStackView.addArrangedSubview(stackView1)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //stack 1 setting
        stackView1.axis = .horizontal
        stackView1.alignment = .fill
        stackView1.distribution = .fill
        stackView1.spacing = 10
        
        //Auto layout for image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "avatar")
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1).isActive = true
        stackView1.addArrangedSubview(imageView)
    }
    
    private func autolayoutTextViewDescription() {
        mainStackView.addArrangedSubview(txtViewDescription)
        txtViewDescription.translatesAutoresizingMaskIntoConstraints = false
        txtViewDescription.text = "Your Description..."
        txtViewDescription.font = txtViewDescription.font?.withSize(15)
        txtViewDescription.backgroundColor = UIColor(displayP3Red: 234/255, green: 221/255, blue: 209/255, alpha: 1)
    }
    
    private func autolayoutStackView2() {
        mainStackView.addArrangedSubview(stackView2)
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView2.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mainStackView.changeBackgroundColor(color: UIColor.green)
        stackView1.changeBackgroundColor(color: UIColor.orange)
        stackView2.changeBackgroundColor(color: UIColor.blue)

    }
    

}
