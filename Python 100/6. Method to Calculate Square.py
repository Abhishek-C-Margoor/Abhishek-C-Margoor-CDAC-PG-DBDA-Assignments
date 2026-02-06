class SquareCalculator:
    def __init__(self,number):
        self.number=number
    def calculate_square(self):
        return "Square is ",self.number ** 2
    
obj=SquareCalculator(int(input("Enter a number: ")))

print(obj.calculate_square())

