import re

a = 7
b = 43

a, b = b, a

print(a, b)

a, b, *c, d = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(a)
print(b)
print(c)
print(d)

exit()

# pattern = r"(?P<name>[\w\.-]+)@([\w\.-]+)(\.[\w\.]+)"
# str = "Please contact info@sololearn.com for assistance"

# match = re.search(pattern, str)
# if match:
#     print(match.group("name"))

# exit()

# myRawStr = r"\W"
# if re.match(myRawStr, "!"):
#     print("Yiss")

# exit()

# myRawStr = r"I am \n\r\a\\w"
# myStr = "I am \n\r\a\w"
# # print(myRawStr)
# # print(myStr)


# # pattern = r"pamspam"
# # pattern2 = "spamspam"

# a = re.search(myRawStr, "I am \n\r\a\w")
# a_2 = re.search(myStr, "I am \n\r\a\w")
# if a:
#     print("Okay")
#     print (a)
# else:
#     print(a_2)

# exit()

b = re.search(pattern, "spamspamspamspamspamspamspamhehehespamspamspam")
if b:
    print("Okay")
    print(b.group(), b.start(), b.end(), b.span())
else:
    print("Not okay")

c = re.findall(pattern, "spamspamspamspamspamspamspamhehehespamspamspam")
if c:
    print("Okay")
    print(c)
else:
    print("Not okay")

exit()

# class SpecialString:
#     def __init__(self, cont):
#         self.cont = cont

#     def __truediv__(self, other):
#         line = "=" * len(other.cont)
#         return "\n".join([self.cont, line, other.cont])

# spam = SpecialString("spam")
# hello = SpecialString("Hello world!")
# print(spam / hello)

# exit()

class Vector2D:
    def __init__(self, x, y):
        self.x = x
        self.y = y

class Vector2DWithAdd(Vector2D):
    def __radd__(self, other):
        return Vector2D(self.x + 2 * other.x, self.y + 2 * other.y)

first = Vector2D(5, 7)
second = Vector2DWithAdd(3, 9)
result = first + second
print(result.x)
print(result.y)

exit()

class A:
    def spam(self):
        print(1111)

class B(A):
    def spam(self):
        print(2)
        super().spam()

B().spam()

exit()

class Wolf: 
    def __init__(self, name, color):
        self.name = name
        self.color = color

    def bark(self):
        print("Grr...")

class Dog(Wolf):
    def bark(self):
        print("Woof")

husky = Dog("Max", "grey")
husky.bark()

exit()

class Rectangle: 
    def __init__(self, width, height):
        self.width = width
        self.height = height

rect = Rectangle(7, 8)
print(rect.__dict__)
print(rect.__str__())