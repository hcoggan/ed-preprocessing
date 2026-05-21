options(echo=TRUE) # if you want see commands in output file
args <- commandArgs(trailingOnly = TRUE)
print(args)
if ( length(args) > 0){
    packages_file = args[1]
} else {
    packages_file = 'packages.txt'
}
f = read.csv(packages_file, header=FALSE, stringsAsFactors = FALSE)
z = install.packages(f[,1], repos='https://cran.rstudio.com', Ncpus = 32) 
