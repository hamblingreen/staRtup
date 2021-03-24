#"staRtup.r" by hamblingreen. A script that I insert into my .rprofile relying on intallr and pacman to automatically check for and install R updates, rtools updates, and package updates.

#Installing/updating/loading required system library packages + tidyverse
if (!require(pacman)) {install.packages("pacman")}
p_load(base, datasets, graphics, grDevices, methods, stats, utils, installr)
#Updating Rtools, R, and packages and clearing console
install.Rtools(choose_version = TRUE, check = TRUE, page_with_download_url = "https://cran.r-project.org/bin/windows/Rtools/rtools40-x86_64.exe")
updateR(F, T, T, F, T, F, T)
update.packages(ask = FALSE)
