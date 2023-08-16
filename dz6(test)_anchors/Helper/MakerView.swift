

import UIKit

class MakerView {
    
    static let shared = MakerView()
    
    func makeLabel (text: String = "",
                    textColor: UIColor = .white,
                    textAlignment: NSTextAlignment = .center,
                    font: UIFont = .systemFont(ofSize: 12, weight: .regular),
                    numberOfLines: Int = 0,
                    lineBreakMode: NSLineBreakMode = .byCharWrapping,
                    shadowColor: UIColor = .clear,
                    shadowOffset: CGSize = CGSize(width: 0, height: 0)
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.font = font
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.shadowColor = shadowColor
        label.shadowOffset = shadowOffset
        
        return label
    }
    
    func makeButton(title: String = "",
                        titleColor: UIColor = .white,
                        backgroundColor: UIColor = Constants.backgroundButtonColor,
                        cornerRadius: CGFloat = 8.0,
                        borderWidth: CGFloat = 0,
                        borderColor: UIColor = .clear,
                        isEnabled: Bool = true,
                        font: UIFont = UIFont.systemFont(ofSize: 20),
                        shadowColor: UIColor? = nil,
                        image: UIImage = UIImage()) -> UIButton
        {
            let btn = UIButton()
            btn.setTitle(title, for: .normal)
            btn.setTitleColor(titleColor, for: .normal)
            btn.backgroundColor = backgroundColor
            btn.layer.cornerRadius = cornerRadius
            btn.layer.borderWidth = borderWidth
            btn.layer.borderColor = borderColor.cgColor
            btn.titleLabel?.font = font
            btn.isEnabled = isEnabled
            btn.setImage(image, for: .normal)
      
            return btn
        }
    
}
