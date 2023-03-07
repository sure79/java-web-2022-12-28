t = str.maketrans("12345", "일이삼사오")

for i in range(5):
    print("김1남".translate(t))
