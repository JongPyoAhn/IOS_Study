# CameraMediaCapture
- **AVFoundation** 을 이용한 Camera 촬영의 기본을 배우는 프로젝트
- 다소 난이도가 있는 편인데 정형적인 틀이라서 이해하고 넘어가면 되는 프로젝트
- **MediaCapture** 기능
  1) AVCaptureSession
    - Camera나 mic에서 들어오는 데이터를 Output으로 연결시키는 중간역할
  2) AVCaptureDeviceInput
    - 카메라, 마이크 등 장치가 이것에 해당
  3) AVCaptureOutput
    - Input에 들어오는 Data를 disk에 쓰던지, processing을 시키던지 함
## 1. Info.plist 사용자 권한 관련 세팅
## 2. 필요한 도구(?)선언
  - AVCaptureSession, AVCaptureDeviceInput, AVCapturePhotoOutput, 카메라를 작업을 처리하기위한 Queue, 장치그자체.
  ```swift
   let captureSession = AVCaptureSession()
   var videoDeviceInput: AVCaptureDeviceInput!
   let photoOutput = AVCapturePhotoOutput()
    
   let sessionQueue = DispatchQueue(label: "session Queue")
   let videoDeviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [ .builtInDualCamera, .builtInWideAngleCamera, .builtInTripleCamera], mediaType: .video, position: .unspecified)
  ```
## 3. 세션 구성
  ```swift
  func setupSession() {
        //해상도 등 프리셋 정하기
        captureSession.sessionPreset = .photo
        //시스템에게 구성시작한다고 알리기
        captureSession.beginConfiguration()
        
        //add video input
        guard let camera = videoDeviceDiscoverySession.devices.first else {
            captureSession.commitConfiguration()
            return
        }
        do{
            let videoDeviceInput = try AVCaptureDeviceInput(device: camera)
            if captureSession.canAddInput(videoDeviceInput){
                captureSession.addInput(videoDeviceInput)
                self.videoDeviceInput = videoDeviceInput
            }else {
                captureSession.commitConfiguration()
                return
            }
        }catch let error {
            print("\(error.localizedDescription)")
        }
        
        //add photo output
        photoOutput.setPreparedPhotoSettingsArray([AVCapturePhotoSettings(format: [AVVideoCodecKey: AVVideoCodecType.jpeg])], completionHandler: nil)
        if captureSession.canAddOutput(photoOutput){
            captureSession.addOutput(photoOutput)
        }else{
            captureSession.commitConfiguration()
            return
        }
        // 시스템에게 구성 완료를 알림
        captureSession.commitConfiguration()
    }
  ```
## 4. 세션 시작, 정지
  ```swift
  sessionQueue.async {
            //캡쳐세션이 진행중이냐? 아닌경우에만 러닝 정지시에는 반대
            if !self.captureSession.isRunning {
                self.captureSession.startRunning()
            }
        }
  ```
## 5. 카메라 전환(전, 후방)
  ```swfit
  @IBAction func switchCamera(sender: Any) {
  //소스코드 참조
  }
  ```
## 6. 사진 찍기
  ```swift
  @IBAction func capturePhoto(_ sender: UIButton) {
        //orientation
        //photooutput
        
        let videoPreviewLayerOrientation = self.previewView.videoPreviewLayer.connection?.videoOrientation
        sessionQueue.async {
            //사진에 대한 오리엔테이션을 커넥션을 통해서 설정해준것.
            let connection = self.photoOutput.connection(with: .video)
            connection?.videoOrientation = videoPreviewLayerOrientation!
            
            //캡처세션에 요청
            let setting = AVCapturePhotoSettings()
            self.photoOutput.capturePhoto(with: setting, delegate: self)
            
        }

    }
  ```


## 7. 사진 저장하기
  ```swift
  func savePhotoLibrary(image: UIImage) {
        PHPhotoLibrary.requestAuthorization{ status in
            if status == .authorized{//저장
                PHPhotoLibrary.shared().performChanges({PHAssetChangeRequest.creationRequestForAsset(from: image)}, completionHandler: {
                    (success, error) in
                    print("---> 이미지 저장완료 했나? \(success)")
                })
                }else{//다시요청
                print("---> 권한을 아직 받지 못함.")
            }
    
        }
    
    }
  ```


