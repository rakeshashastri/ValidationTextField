//
//  InsetTextField.swift
//  ValidationTextField
//
//  Created by Rakesha Shastri on 08/05/21.
//

import UIKit

class InsetTextField: UITextField {

    var padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    //MARK: Initializer(s)
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Empty initializer necessary for this class to accept this initializer instead of asking for the coder init
    }
    
    convenience init(padding: UIEdgeInsets) {
        self.init(frame: .zero)
        
        clearButtonMode = .whileEditing
        self.padding = padding
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
    }
    
}
