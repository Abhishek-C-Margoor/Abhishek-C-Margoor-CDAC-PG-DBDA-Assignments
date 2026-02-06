class FirstClass:
    def getString(self):
        self.str=input("Enter a String: ")
    def printString(self):
        print("You entered: ",self.str.upper())

obj=FirstClass()
obj.getString()
obj.printString()