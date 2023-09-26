# Author: Marcelo Villalobos Diaz
# Date: September 2023
# Description: simulate final results of my friends after a race

# create friends vector:
friends <- c("Megan", "Janet", "Tina")

# add my friends to a list with their respective information:
info_list <- list(
  Esther = list(
    jersey = 3432,
    color = "purple"
  ),
  Feng = list(
    jersey = 4221,
    color = "blue"
  ),
  Megan = list(
    jersey = 1363,
    color = "green"
  ),
  Janet = list(
    jersey = 6729,
    color = "green"
  ),
  Tina = list(
    jersey = 7501,
    color = "orange"
  )
)

# this function takes a name as a string and prints out the information:
print_information <- function(name) {
  print(paste(name, "is #", info_list[[name]]$jersey, "wearing the color", info_list[[name]]$color))
}

# call the print_information function on the friends vector using a for loop:
for (name in names(info_list)) {
  print_information(name)
}

# results starting from the left (first place) to the right (last place)
race_results <- c("Gi", "Francesca", "Lea", "Vivian", "Jessica", "Esther", "Mary", "Yasmina", "Megan", "Janet", "Tiffany", "Kishan", "Feng", "Z", "Tina")

# this function takes a name as a parameter and returns the race results:
find_place <- function(runner) {
  for(place in 1:length(race_results)) {
    if (race_results[place] == runner) {
      print(paste(race_results[place], "finished in placed", place))
      return(place)
    }
  }
  return(0)
}

# testing the function, calling and apply find_place():
find_place("Francesca")
find_place("David")

# my friends results [9, 10, 15]:
results2 <- sapply(friends, find_place)
results2