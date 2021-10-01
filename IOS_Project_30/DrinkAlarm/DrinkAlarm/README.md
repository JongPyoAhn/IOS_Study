# DrinkAlarmApp
- 물 마실 시간을 설정하면 그 시간에 맞춰서 푸시알림이 간다.

## UNNotificationRequest
- 작성하려면 아래 3가지 내용이 필수이다.
    1) identifier : id역할
    2) UNMutableNotificationContent : 알림에 나타날 내용정의
    3) Trigger : 알람이 어떤곳에서 발생할지 조건을 거는 부분

- 절차
    1) Request 요소를 모음
    2) Center에 보냄
    3) Trigger에 따라 Center에서 알람을 보냄

- 구현 순서
        1. AppDelegate 
        2. import NotificationCenter
        3. delegate선언
        4. delegate구현
            - willpresent((노티피케이션센터를 보내기전에 어떠한 핸들링을 해줄것이냐, 보낼요소들)
            - didReceive(여기서 사용은 안하는데 공식문서에서는 항상 선언해주라고함)
        5. 사용자의 승인 받기
            1) import UserNotifications
            2) 권한요청하기(27번)
        6. NotificationRequest작성
            - 알림의 내용을 정의
            - 이 앱에서 로컬알림이 생성되어야 하는곳?
                1) 알럿리스트뷰컨에서 데이트픽커클로저를 통해서 알람이 추가될 때
                2) AlertListCell에서 스위치가 켜질 때
                - Local알림은 노티피케이션센터에 리퀘스트가 add되는 형태고 그 센터가 트리거조건을 만족할 때 마다 노티피케이션을 보내게되는 구조 따라서 노티피케이션 익스텐션에 범용함수를 추가해서 사용
        7. 뱃지를 설정해줬기 때문에 뱃지를 없애는 코드를 작성
            1) SceneDelegate
            2) sceneDidBecomeActive(사용자가 앱을 열어서 신이 액티브 상태가 되었을 때임.)
            3) UIApplication.shared.applicationIconBadgeNumber = 0
        8. Trigger 설정(30번)
        9. Request 설정(31번)
            1) request를 add
            2) 로컬알림추가함수(addNotificationCenter)를 로컬알림이 추가되는 두 군데에 각각추가
        10. 로컬알림 삭제(32번)
            1) 밀어서 삭제할 때
            2) 알림이 스위치를 끌 경우
            
## 그 외의 주요기능
- DateFormatter(date의 형식지정, 오전/오후로 나타나도록 변환) 
- 테이블뷰 옆으로 밀어서 삭제 (tableview의 caneditrowat, commit editingstyle 이용)
- DatePicker(preferred Style, Mode, Locale, 부모뷰에 시간전달)
- userDefaults(우리가 만든 구조체 -> userDefaults에 저장)
- tag를 부여함으로써 index를 인식 (23번)

