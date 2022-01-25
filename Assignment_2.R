#Write a command that lists all of the .csv files found in the Data/ directory and stores that list in an object called “csv_files”
csv_files <- list.files("Data/",pattern = ".csv", full.names = TRUE,recursive = TRUE)

#Find how many files match that description using the length() function
length(csv_files)
#145

#Open the wingspan_vs_mass.csv file and store the contents as an R object named “df” using the read.csv() function
df <- read.csv("Data/wingspan_vs_mass.csv",)

#Inspect the first 5 lines of this data set using the head() function
head(df,5)

#Find any files (recursively) in the Data/ directory that begin with the letter “b” (lowercase)
list.files("Data/",pattern = "^b",full.names = TRUE,recursive = TRUE)

#write a command that displays the first line of each of those “b” files (this is tricky… use a for-loop)
pt <- list.files("Data/",pattern = "^b",full.names = TRUE,recursive = TRUE)
First_line <- pt[1:3]

for(i in 1:3){
  print(readLines(First_line[i])[3])
}

#Do the same thing for all files that end in “.csv”
tp <- list.files("Data/",pattern = ".csv",full.names = TRUE,recursive = TRUE)
csv_line <- tp[1:145]

for(i in 1:145){
  print(readLines(csv_line[i])[145])
}
#I am not sure if I did the last question correctly because when it prints out all the csv files, only some show up and the rest are NA.