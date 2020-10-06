#LABORATORIO 27 MERGE

#Instalar paquetería

library(data.table)

choose.files()

green.products <- read.csv("C:\\Users\\turismo\\Dropbox\\DCEA\\4to. Semestre\\Ciencia de datos\\Documentos para laboratorios\\LAB27\\green products.csv")
all.products <- read.csv("C:\\Users\\turismo\\Dropbox\\DCEA\\4to. Semestre\\Ciencia de datos\\Documenos para laboratorios\\LAB27\\COMPLETE_YEARS_PRODUCTS.csv")

green.products <- as.data.table(green.products)

all.products <- as.data.table(all.products)

#merge

merge.allproducts = merge(all.products, green.products, by="product_code")

merge.full = merge(all.products, green.products, by="product_code", all.x = T)

write.csv(merge.full, file = "merge.ful.csv")
