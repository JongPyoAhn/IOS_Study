#노드 생성
class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

#노드 관리클래스
class NodeMgmt:
    def __init__(self, head):
        self.head = head

    def insert(self, value):
        self.current_node = self.head
        while True:
            if value < self.current_node:
                if self.current_node.left != None:
                    self.current_node.left = self.current_node
                else:
                    self.current_node.left = Node(value)
                    break
            else:
                if self.current_node.right != None:
                    self.current_node.right = self.current_node
                else:
                    self.current_node.right = Node(value)
                    break
    
    def search(self, value):
        self.current_node = self.head
        while self.current_node:
            if self.current_node == value:
                return True
            elif value < self.current_node:
                self.current_node.left = self.current_node
            else:
                self.current_node.right = self.current_node
        
        return False

# 노드 삭제
    def delete(self, value):
        searched = False
        self.current_node = self.head
        self.parent_node = self.head
        #탐색
        while self.current_node:
            if self.current_node.value == value:
                searched = True
                break
            elif value < self.current_node.value:
                self.parent_node = self.current_node
                self.current_node = self.current_node.left
            else:
                self.parent_node = self.current_node
                self.current_node = self.current_node.right
        
        if searched == False:
            return False
        #리프노드 삭제
        if self.current_node.left == None and self.current_node.right == None:
            if value > self.parent_node.value:
                self.parent_node.right = None
            else:
                self.parent_node.left = None
            del self.current_node
        #삭제하려는 Node의 child가 하나 있는경우
        #child가 왼쪽에 있는 경우
        if self.current_node.left != None and self.current_node.right == None:
            if value < self.parent_node.value:
                self.parent_node.left = self.current_node.left
            else:
                self.parent_node.right = self.current_node.left
        #child가 오른쪽에 있는 경우
        elif self.current_node.left == None and self.current_node.right != None:
            if value < self.parent_node.value:
                self.parent_node.left = self.current_node.right
            else:
                self.parent_node.right = self.current_node.right

        #child가 2개있는경우
        if self.current_node.left != None and self.current_node.right != None:
            #삭제할 노드가 Parent노드 왼쪽에 있는 경우
            if value < self.parent_node.value:
                self.change_node = self.current_node.right
                self.change_parent_node = self.current_node.right
                while self.change_node.left != None:
                    self.change_parent_node = self.change_node
                    self.change_node = self.change_node.left
                if self.change_node.right != None:
                    self.change_parent_node.left = self.change_node.right
                else:
                    self.change_parent_node.left = None
                self.parent_node.left = self.change_node
                self.change_node.left = self.current_node.left
                self.change_node.right = self.current_node.right
            #삭제할 노드가 Parent노드 오른쪽에 있는 경우
            else:
                self.change_node = self.current_node.right
                self.change_parent_node = self.current_node.right

                while self.change_node.left != None:
                    self.change_parent_node = self.change_node
                    self.change_node = self.change_node.left
                if self.change_node.right != None:
                    self.change_parent_node.left = self.change_node.right
                else:
                    self.change_parent_node.left = None
                self.parent_node.right = self.change_node
                self.change_node.left = self.current_node.left
                self.change_node.right = self.current_node.right
                

        
