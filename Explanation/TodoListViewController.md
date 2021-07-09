#  TodoListViewController
## 키보드로인한 InputView의 위치변경
- 키보드컨트롤 작업
### Notification
- ViewController가 Notification내의 옵저버를 등록하고 호출할 수 있음
- userInfo : 작업이 시작되거나 완료되는 시점에 필요한 데이터를 넘겨줄 수 있음
- 아래의 코드는 노티피케이션이 발생했는지 안했는지를 확인하는 코드인것같다.
```swift
guard let userInfo = noti.userInfo else { return }
```
- 키보드크기를 구하는 작업
```swift
guard let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {return}
```
- 키보드가 올라오면 뷰의 아래 간격을 넓히고 아니면 0
```swift
if noti.name == UIResponder.keyboardWillShowNotification {
            let adjustmentHeight = keyboardFrame.height - view.safeAreaInsets.bottom
            inputViewBottom.constant = adjustmentHeight
        }else {
            inputViewBottom.constant = 0
        }
```
- 옵저버 추가
```swift
NotificationCenter.default.addObserver(self, selector: #selector(adjustInputView), name: UIResponder.keyboardWillShowNotification, object: nil)
NotificationCenter.default.addObserver(self, selector: #selector(adjustInputView), name: UIResponder.keyboardWillHideNotification, object: nil)
```

## Completion Handler
- 아래와 같이 2개가 작성됬는데 굳이 IBAction으로 안한이유는.. 셀이 업데이트 된 후에 필요한 작업이라서 그런거 같다.
```swift
cell.doneButtonTapHandler = { isDone in
            todo.isDone = isDone
            self.todoListModel.updateTodo(todo)
            self.collectionView.reloadData()
        }        
```

```swift
cell.deleteButtonTapHandler = {
            self.todoListModel.deleteTodo(todo)
            self.collectionView.reloadData()
        }
```
