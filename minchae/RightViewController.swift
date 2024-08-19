import UIKit

class RightViewController: UIViewController {
    
    let answerLabel: UILabel = {
        let label = UILabel()
        label.text = "정답입니다!"
        label.font = .boldSystemFont(ofSize: 30)
        
        return label
    }()
    
    let rightImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "check")
        // 내가 넣고 싶은 이미지 파일을 Assest에 추가한 후 UIImage를 통해 추가할 파일의 이름을 적어준다.
        return image
    }()
    
    
    let mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("메인으로 이동", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(mainButtonTapped), for: .touchUpInside)
        //addTarget을 통해 버튼이 눌렸을 때 화면이 이동하는 이벤트를 발생시킨다.
        return button
    }()
    
    @objc func mainButtonTapped() {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .white
        
        view.addSubview(rightImage)
        view.addSubview(answerLabel)
        view.addSubview(mainButton)
        
        rightImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(250)
            make.centerX.equalToSuperview()
        }
        answerLabel.snp.makeConstraints{ make in
            make.top.equalTo(rightImage.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
        }
        mainButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(60)
            make.left.right.equalToSuperview().inset(24)
            make.height.equalTo(60)
        }
    }
}
