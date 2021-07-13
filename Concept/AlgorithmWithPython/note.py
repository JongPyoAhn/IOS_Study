class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

class NodeMgmt:
    def __init__(self, head):
        self.head = head

    def insert(self, value):
        self.current_node = self.head
        while True:
            if value < self.current_node.value:
                if self.current_node.left != None:
                    self.current_node = self.current_node.left
                else:
                    self.current_node.left = Node(value)
                    break
            else:
                if self.current_node.right != None:
                    self.current_node = self.current_node.right
                else:
                    self.curretn_node.right = Node(value)
                    break

    def search(self, value):
        self.current_node = self.head
        while self.current_node:
            if value == self.current_node.value:
                return True
            elif value < self.current_node.value:
                self.current_node = self.current_node.left
            else:
                self.current_node = self.current_node.right
        return False

    def delete(self, value):
        self.current_node = self.head
        self.parent_node = self.head
        searched = False
        while self.current_node:
            if value == self.current_node.value:
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
        
        if self.current_node.left == None and self.current_node.right == None:
            if value < self.parent_node.value:
                self.parent_node.left = None    
            else:
                self.parent_node.right = None 
            del self.current_node
            
        if self.current_node.left != None and self.current_node.right == None:
            if value < self.parent_node.value:
                self.parent_node.left = self.current_node.left
            else:
                self.parent_node.right = self.current_node.right
        elif self.current_node.left == None and self.current_node.right != None:
            if value < self.parent_node.value:
                self.parent_node.left = self.current_node.left
            else:
                self.parent_node.right = self.current_node.right

        if self.current_node.left != None and self.current_node.right != None:
            if value < self.parent_node.value:
                self.change_parent_node = self.current_node.right
                self.change_node = self.current_node.right
                while self.change_node.left:
                    self.change_parent_node = self.change_node
                    self.change_node = self.change_node.left
                if self.change_node.right != None:
                    self.change_parent_node.left = self.change_node.right
                else:
                    self.change_parent_node.left = None
                self.parent_node.left = self.change_node
                self.change_node.left = self.current_node.left
                self.change_node.right = self.current_node.right


    
                
