


library(renv)
#renv::init() 
renv::snapshot() #run to lock a new change in packages

renv::restore() #update packages config
#When updated, this is the message you should see
#* The library is already synchronized with the lockfile.

#installing new packages
options(renv.download.override = utils::download.file)

#install.packages('ggplot2')
#install.packages('Rcurl')


#Sys.unsetenv("R_PROFILE_USER")