#  Spotify_Style 로그인 구현하기
### 이 강의는 이전에 인하챗봇 프로젝트를 할 때 만든 로그인창과 유사하지만, 이 강의를 통해 처음으로 구글과 애플 로그인을 구현해본다.  

###  과정에 Apple로그인을 넣은 이유?
- 심사 정책에 따르면 SNS로그인을 사용할 경우 반드시, Apple 계정을 통한 로그인을 제공하도록 되어있다.

##  구글
1. 파이어베이스에서 사용 설정
2. pod 파일 추가 "pod 'GoogleSignIn'"
3. 맞춤 URL스키마 설정
    1) 프로젝트 선택
    2) Info -> URLTypes "+"
    3) GoogleService-Info.plist에 가서 Reversed_Client_ID 복사
    4) URLTypes의 URLSchemes에 붙여넣기 (URLSchemes값을 통해서 구글은 권한을 위임할 서비스를 구분하게 된다.)
4. AppDelegate에서 "import GoogleSignIn"
5. AppDelegate에서 GIDSign In Delegate 프로토콜을 추가
6. AppDelegate에서 sign함수 구현
    1) google access토큰 받기
    2) 파이어베이스에 토큰정보 등록
```swift
func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
    if let error = error{
        print("\(error.localizedDescription)")
        return
    }else {
        guard let authentification = user.authentication else {return}
        //credetial은 google access토큰을 부여 받은것임
        let credential = GoogleAuthProvider.credential(withIDToken: authentification.idToken, accessToken: authentification.accessToken)
        //파이어베이스 인증정보에 등록
        Auth.auth().signIn(with: credential) { result, error in
            self.showMainViewController()
        }
    }
```
7. 구글 로그인 버튼의 type을 GIDSignInButton으로 변경
```swift
@IBOutlet weak var googleLoginButton: GIDSignInButton!
```
8. 구글 로그인을 진행하려면 로그인을 진행할 WebView가 필요하고, 해당 뷰를 띄워줄 뷰 컨트롤러 선언이 필요하다.
```swift
GIDSignIn.sharedInstance().presentingViewController = self
```
9. 버튼을 이용한 파이어베이스 인증
```swift
@IBAction func googleLoginButtonTabbed(_ sender: Any) {
    //Firebase인증
    GIDSignIn.sharedInstance().signIn()
}
```
10. Google Logout
- Firebase인증값에 대한 로그아웃을 진행하면된다.



## 애플
- 아직 AppleDeveloper에 가입하지 않아서 실습불가



## LoginViewController
1. 아래와 같이 forEach문을 이용해서 여러개의 요소에 한번에 설정할 수 있다.
```swift
[emailLoginButton, googleLoginButton, appleLoginButton].forEach{
    $0?.layer.borderWidth = 1
    $0?.layer.borderColor = UIColor.white.cgColor
    $0?.layer.cornerRadius = 30
}
```

## EnterEmailViewController
1. UITextFieldDelegate 프로토콜을 이용하여 텍스트필드의 다양한 내장메소드들을 이용할 수 있다.(주의: 텍스트필드 outlet에 delegate설정해줘야함)
```swift
emailTextField.delegate = self
passwordTextField.delegate = self
```

```swift
    extension EnterEmailViewController : UITextFieldDelegate {
        
        //텍스트필드 입력완료됬을 때
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            //키보드 내리기
            view.endEditing(true)
            return false
        }
        
        //텍스트필드 작성 끝났을 때
        func textFieldDidEndEditing(_ textField: UITextField) {
            let isEmailEmpty: Bool = emailTextField.text == ""
            let isPasswordEmpty: Bool = passwordTextField.text == ""
            nextButton.isEnabled = !isEmailEmpty && !isPasswordEmpty
        }
    }
```

2. 에러처리 방법
    - 에러를 코드화해서 에러에 따른 처리를 배우게 된 것 같다. 에러를 확인하는 방법은 error가 있는 부분을 디버깅하고 그 부분에서 콘솔에 po error 입력시 어떤종류에 에러인지 상세하게 나온다.
    - 아래 코드에 나온 순환참조관련해서는 완벽한 이해 후 블로그포스팅예정
```swift
Auth.auth().createUser(withEmail: email, password: password) {[weak self] Result, error
    in
    guard let self = self else {return}
    
    if let error = error {
        let code = (error as NSError).code
        switch code {
        case 17007: //이미 가입한 게정일 때
            //로그인 하기
            self.showMainViewController()
        default:
            self.errorMessageLabel.text = error.localizedDescription

        }
    }
}
```
