
import UIKit

class ForgotPasswordViewController: UIViewController {

    var email: String = ""
    
    private let logoImageView = UIImageView(image: UIImage(named: "logo"))
    
    private let forgotLabel = MakerView.shared.makeLabel(text: "Forgot Password",
                                                          font: .systemFont(ofSize: 28, weight: .regular))
    
    private let emailLabel = MakerView.shared.makeLabel(text: "Enter your email",
                                                          font: .systemFont(ofSize: 18, weight: .regular))
    
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Email"
        textField.font = .systemFont(ofSize: 18)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        return textField
    }()
    
    private let methodLabel = MakerView.shared.makeLabel(text: "Choose Another Method",
                                                         textColor: .systemGray2,
                                                         font: .systemFont(ofSize: 16, weight: .regular))
    
    private let helpButton = MakerView.shared.makeButton(title: "Need Help?",
                                                           backgroundColor: .clear,
                                                           cornerRadius: 0,
                                                           font: .systemFont(ofSize: 16)
                                                          )
    
    private let otpButton = MakerView.shared.makeButton(title: "Send OTP",
                                                          cornerRadius: 22)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        configurateLabel()
        configurateTextFields()
        confugurateAnotherMethod()
        configurateOtpButton()
        
        emailTextField.text = email

    }
    private func initUI() {
        
        view.backgroundColor = .black
        view.addSubview(logoImageView)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

    }
    
    private func configurateLabel() {
        
        view.addSubview(forgotLabel)
        forgotLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forgotLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50),
        ])
    }
    
    private func configurateTextFields() {
        
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailLabel.topAnchor.constraint(equalTo: forgotLabel.bottomAnchor, constant: 60),
        ])

        
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 48)
        ])

    }
    
    private func confugurateAnotherMethod() {
        
        view.addSubview(methodLabel)
        methodLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            methodLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            methodLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
        ])
        
        view.addSubview(helpButton)
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            helpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            helpButton.bottomAnchor.constraint(equalTo: methodLabel.bottomAnchor),
        ])

        
    }
    
    private func configurateOtpButton() {
        
        view.addSubview(otpButton)
        otpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            otpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            otpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            otpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            otpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -320),
            otpButton.heightAnchor.constraint(equalToConstant: 48)
        ])

    }
}
