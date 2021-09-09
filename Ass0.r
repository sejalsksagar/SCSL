#3372 09/09/21

print("Print odd nos")
new.print_odd <- function(x) {
   for(a in x) 
      if (a %% 2 != 0) print(a)
}
new.print_odd(1:10)   

print("Count odd nos")
new.count_odd <- function(x) {
   c <- 0
   for(a in x) 
      if (a %% 2 != 0) c <- c + 1
   print(c)
}
new.count_odd(c(1, 2, 3, 3, 9, 0, 4))   

print("factorial")
new.fact <- function(x) {
   if (x == 0 || x == 1) return (1)
   return (x*new.fact(x-1))
}
print(new.fact(4))     
