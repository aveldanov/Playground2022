//
//  ItemTableViewCell.swift
//  TurboInt13DELEGATE
//
//  Created by Anton Veldanov on 9/6/21.
//

import UIKit

protocol CellDelegate: AnyObject {
    func updateCell(with model: String)
}

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    
    
    let text = "Textto send"
    public weak var delegate: CellDelegate?

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        delegate?.updateCell(with: text)
    }
    

    
    
}
