# check if packs installed and load them
loadPacks <- function() {
  list.of.packages <- c("foreign")
  new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
  if(length(new.packages)) install.packages(new.packages)
  
  # load the packs
  library(foreign)
  
}

# use this for .sav file
savToCSV <- function(pathToFile) {

    loadPacks()

    # SAV file?
    write.table(read.spss(pathToFile), file="from_sav_data.csv", quote = FALSE, sep = ",")
}

# use this for DTA file
DTAToCSV <- function(pathToFile) {

    loadPacks()

    write.table(read.dta(pathToFile), file="from_dta_data.csv", quote = FALSE, sep = ",")
}
