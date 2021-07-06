#  Protocol
## UICollectionViewDataSource
### Section
1. 섹션의 개수를 구함
 ```swift
  func numberOfSections(in collectionView: UICollectionView) -> Int {
        return todoListViewModel.numOfSection
    }
 ```
2. 섹션마다 아이템의 개수를 구함
 ```swift
 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return todoListViewModel.todayTodos.count
        }else{
            return todoListViewModel.upcompingTodos.count
        }
 ```
3. 커스텀 셀
  ```swift
  guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TodoListCell", for: indexPath) as? TodoListCell else {
            return UICollectionViewCell()
        }
        var todo: Todo
        if indexPath.section == 0 {
            todo = todoListViewModel.todayTodos[indexPath.item]
        }else{
            todo = todoListViewModel.upcompingTodos[indexPath.item]
        }
        cell.updateUI(todo: todo)
        cell.doneButtonTapHandler = { isDone in
            todo.isDone = isDone
            self.todoListViewModel.updateTodo(todo)
            self.collectionView.reloadData()
        }
        cell.deleteButtonTapHandler = {
            self.todoListViewModel.deleteTodo(todo)
            self.collectionView.reloadData()
        }
        return cell
    ```
