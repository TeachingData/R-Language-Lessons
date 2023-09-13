# Set a few vectors for poll results
ages = c(24,22,18,32,40,35)
marital = c("single", "single", "single", "divorced", "married", "married")

# few vector checks
print(any(marital=="widowed"))
print(any(marital=="single"))
print(all(marital=="single"))

print(any(ages>40))
print(all(ages<50))

ages <- c(ages, 48)
marital <- append(marital, "divorced")

print(cat("The ages are", ages, "and marital are", marital))
print(marital[1:3])
print(marital[4])

