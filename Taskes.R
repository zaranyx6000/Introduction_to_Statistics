# Introduction to Statistics for the Social Sciences — Week 2 ----

# 1) Vektor 'name' erstellen und Datentyp prüfen ---------------------------------------------------
name <- c("Clara", "Lukas", "Emilia", "Anna", "Luke")
typeof(name)   # "character"

# 2) Data Frame 'semester1' erstellen und Datentypen prüfen ---------------------------------------
cohort <- c(2000, 2000, 2004, 2005, 2005)         
grade  <- c(5.0, 5.5, 6.0, 6.0, 6.0)                 
id     <- 1:5                                        
major  <- c(TRUE, TRUE, FALSE, TRUE, FALSE)          

semester1 <- data.frame(
  name   = name,
  cohort = cohort,
  grade  = grade,
  id     = id,
  major  = major
 
)

str(semester1)                         # Strukturübersicht 
