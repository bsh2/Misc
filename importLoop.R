# Small loop to read in a number of i=1:n labelled files (i.e. i.csv) within a 
# directory. The loop can be modified as needed to read in different files.

n <- 10  # Number of files you want to read in
filenames <- c()  # Vector to take filename values
for (i in 1:n) {
  filenames[i] <- paste(i,".csv",sep="")
  # gsub() removes the .csv from the value of filename[i]
  # assign the value of filename[i] without .csv to the corresponding csv file 
  # you will import.
  assign(gsub("[.]csv$","", filenames[i]), read.csv(filenames[i], 
    header = FALSE))
}

# The above code is flexible, and you could equally just assign the value of the
# csv you read in to something other than filenames[i]