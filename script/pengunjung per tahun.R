#Script ini berisi kode untuk mendapatkan barplot dari jumlah pengunjung per thn
#dari masing2 perpustakaan dan seluruh data.

#Mengaktifkan package dplyr
library(dplyr)

#Mendapatkan list pengunjung per tahun dalam ratusan ribu orang
pengunjung_per_tahun <- tapply(data$jumlah, data$tahun, sum) / 100000

#Membuat file png untuk menyimpan barplot data pengunjung per tahun
png(filename = "pengunjung per tahun.png")

#Membuat barplot data pengunjung per tahun
barplot(pengunjung_per_tahun, ylim = c(0,40),
        ylab = "Jumlah Pengunjung (ratusan ribu orang)",
        xlab = "Tahun", main = "Jumlah Pengunjung per Tahun")

#Menyimpan barplot pada file png yang telah dibuat
dev.off()

#Mendapatkan list jumlah pengunjung cikini per tahun dalam ribuan  orang
cikini_tahun <- filter(data, data$perpustakaan == "Cikini")$jumlah /1000

#Memberikan nama bagi setiap elemen list tsb
names(cikini_tahun) <- c("2015", "2016", "2017", "2018", "2019")

#Membuat file png untuk menyimpan barplot data pengunjung cikini per tahun
png(filename = "pengunjung cikini per tahun.png")

#Membuat barplot data pengunjung Perpustakaan Cikini per tahun
barplot(cikini_tahun, ylim = c(0,110), ylab = "Jumlah Pengunjung (ribuan orang)",
        xlab = "Tahun", main = "Jumlah Pengunjung Perpustakaan Cikini per Tahun")

#Menyimpan barplot pada file png yang telah dibuat
dev.off()


#Mendapatkan list pengunjung KPAK jakbar stationary per tahun dalam ribuan orang
jakbar_stat_tahun <- filter(data, data$perpustakaan == "KPAK Jakbar (Stationary)")$jumlah / 1000

#Memberikan nama bagi setiap elemen list tsb
names(jakbar_stat_tahun) <- c("2015", "2016", "2017", "2018", "2019")

#Membuat file png untuk menyimpan barplot data pengunjung cikini per tahun
png(filename = "pengunjung jakbar stat per tahun.png")

#Membuat barplot data pengunjung Perpustakaan Cikini per tahun
barplot(jakbar_stat_tahun, ylim = c(0,50), ylab = "Jumlah Pengunjung (ribuan orang)",
        xlab = "Tahun", main = "Jumlah Pengunjung KPAK Jakbar (Stationary) per Tahun")

#Menyimpan barplot pada file png yang telah dibuat
dev.off()
