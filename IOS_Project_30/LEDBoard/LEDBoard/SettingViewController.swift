//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 안종표 on 2021/12/14.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject{
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {
    

    
    @IBOutlet weak var orangeButton: UIButton!
    
    
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    weak var delegate: LEDBoardSettingDelegate?
    
    
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    var ledText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        
    }
    private func configureView(){
        if let ledText = self.ledText{
            self.textField.text = ledText
        }
        self.changeTextColor(self.textColor)
        self.changeBackgroundColorButton(self.backgroundColor)
    }
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        
        if sender == self.yellowButton{
            self.changeTextColor(.yellow)
            self.textColor = .yellow
        }else if sender == self.purpleButton{
            self.changeTextColor(.purple)
            self.textColor = .purple
        }else{
            self.changeTextColor(.green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton{
            self.changeBackgroundColorButton(.black)
            self.backgroundColor = .black
        }else if sender == self.blueButton{
            self.changeBackgroundColorButton(.blue)
            self.backgroundColor = .blue
        }else{
            self.changeBackgroundColorButton(.orange)
            self.backgroundColor = .orange
        }
    }
    
    @IBAction func tapSaveButton(_ sender: Any) {
        self.delegate?.changedSetting(text: self.textField.text, textColor: self.textColor, backgroundColor: self.backgroundColor)
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(_ color: UIColor){
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1: 0.2
        
    }
    private func changeBackgroundColorButton(_ color: UIColor){
        self.blackButton.alpha = color == UIColor.black ? 1: 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1: 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1: 0.2
    }
}
