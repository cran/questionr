pkgname <- "questionr"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('questionr')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("chisq.residuals")
### * chisq.residuals

flush(stderr()); flush(stdout())

### Name: chisq.residuals
### Title: Return the chi-squared residuals of a two-way frequency table.
### Aliases: chisq.residuals residus

### ** Examples

## Sample table
data(Titanic)
tab <- apply(Titanic, c(1,4), sum)
## Pearson residuals
chisq.residuals(tab)
## Standardized residuals
chisq.residuals(tab, std=TRUE)



cleanEx()
nameEx("copy.default")
### * copy.default

flush(stderr()); flush(stdout())

### Name: copy.default
### Title: Transform an object into HTML and copy it for export
### Aliases: copie copie.default copy copy.default
### Keywords: connection

### ** Examples

data(iris)
tab <- table(cut(iris$Sepal.Length,8),cut(iris$Sepal.Width,4))
## Not run: copie(tab)



cleanEx()
nameEx("copy.proptab")
### * copy.proptab

flush(stderr()); flush(stdout())

### Name: copy.proptab
### Title: Export of a proptab object to HTML
### Aliases: copie.proptab copy.proptab
### Keywords: connection

### ** Examples

data(iris)
tab <- table(cut(iris$Sepal.Length,8),cut(iris$Sepal.Width,4))
ptab <- rprop(tab, percent=TRUE)
## Not run: copy(ptab)



cleanEx()
nameEx("cprop")
### * cprop

flush(stderr()); flush(stdout())

### Name: cprop
### Title: Column percentages of a two-way frequency table.
### Aliases: cprop

### ** Examples

## Sample table
data(Titanic)
tab <- apply(Titanic, c(4,1), sum)
## Column percentages
cprop(tab)
## Column percentages with custom display
cprop(tab, digits=2, percent=TRUE, total=FALSE)



cleanEx()
nameEx("cramer.v")
### * cramer.v

flush(stderr()); flush(stdout())

### Name: cramer.v
### Title: Compute Cramer's V of a two-way frequency table
### Aliases: cramer.v
### Keywords: univar

### ** Examples

data(Titanic)
tab <- apply(Titanic, c(4,1), sum)
#' print(tab)
cramer.v(tab)



cleanEx()
nameEx("cross.multi.table")
### * cross.multi.table

flush(stderr()); flush(stdout())

### Name: cross.multi.table
### Title: Two-way frequency table between a multiple choices question and
###   a factor
### Aliases: cross.multi.table

### ** Examples

## Sample data frame
sex <- sample(c("Man","Woman"),100,replace=TRUE)
jazz <- sample(c(0,1),100,replace=TRUE)
rock <- sample(c(TRUE, FALSE),100,replace=TRUE)
electronic <- sample(c("Y","N"),100,replace=TRUE)
weights <- runif(100)*2
df <- data.frame(sex,jazz,rock,electronic,weights)
## Two-way frequency table on 'music' variables by sex
cross.multi.table(df[,c("jazz", "rock","electronic")], df$sex, true.codes=list("Y"))



cleanEx()
nameEx("lookfor")
### * lookfor

flush(stderr()); flush(stdout())

### Name: lookfor
### Title: Look for keywords variable names and descriptions
### Aliases: lookfor

### ** Examples

# Look for a single keyword.
lookfor(iris, "petal")
# Load memisc package and example data.
require(memisc)
nes1948.por <- UnZip("anes/NES1948.ZIP","NES1948.POR", package="memisc")
nes1948 <- spss.portable.file(nes1948.por)
# Look for a vector of keywords.
lookfor(nes1948, c("Truman", "Dewey"))
# Look for a regular expression.
lookfor(nes1948, "truman|dewey")
# Look for a phrase.
lookfor(nes1948, "personal attribute")



cleanEx()
nameEx("multi.split")
### * multi.split

flush(stderr()); flush(stdout())

### Name: multi.split
### Title: Split a multiple choices variable in a series of binary
###   variables
### Aliases: multi.split

### ** Examples

v <- c("red/blue","green","red/green","blue/red")
multi.split(v)
## One-way frequency table of the result
multi.table(multi.split(v))



cleanEx()
nameEx("multi.table")
### * multi.table

flush(stderr()); flush(stdout())

### Name: multi.table
### Title: One-way frequency table for multiple choices question
### Aliases: multi.table

### ** Examples

## Sample data frame
sex <- sample(c("Man","Woman"),100,replace=TRUE)
jazz <- sample(c(0,1),100,replace=TRUE)
rock <- sample(c(TRUE, FALSE),100,replace=TRUE)
electronic <- sample(c("Y","N"),100,replace=TRUE)
weights <- runif(100)*2
df <- data.frame(sex,jazz,rock,electronic,weights)
## Frequency table on 'music' variables
multi.table(df[,c("jazz", "rock","electronic")], true.codes=list("Y"))
## Weighted frequency table on 'music' variables
multi.table(df[,c("jazz", "rock","electronic")], true.codes=list("Y"), weights=df$weights)



cleanEx()
nameEx("prop")
### * prop

flush(stderr()); flush(stdout())

### Name: prop
### Title: Global percentages of a two-way frequency table.
### Aliases: prop

### ** Examples

## Sample table
data(Titanic)
tab <- apply(Titanic, c(1,4), sum)
## Percentages
prop(tab)
## Percentages with custom display
prop(tab, digits=2, percent=TRUE, total=FALSE)



cleanEx()
nameEx("quant.cut")
### * quant.cut

flush(stderr()); flush(stdout())

### Name: quant.cut
### Title: Transform a quantitative variable into a qualitative variable
### Aliases: quant.cut

### ** Examples

data(iris)
sepal.width3cl <- quant.cut(iris$Sepal.Width,3)
table(sepal.width3cl)



cleanEx()
nameEx("rename.variable")
### * rename.variable

flush(stderr()); flush(stdout())

### Name: rename.variable
### Title: Rename a data frame column
### Aliases: rename.variable renomme.variable
### Keywords: manip

### ** Examples

data(iris)
str(iris)
iris <- rename.variable(iris, "Species", "especes")
str(iris)



cleanEx()
nameEx("rprop")
### * rprop

flush(stderr()); flush(stdout())

### Name: rprop
### Title: Row percentages of a two-way frequency table.
### Aliases: lprop rprop

### ** Examples

## Sample table
data(Titanic)
tab <- apply(Titanic, c(1,4), sum)
## Column percentages
rprop(tab)
## Column percentages with custom display
rprop(tab, digits=2, percent=TRUE, total=FALSE)



cleanEx()
nameEx("wtd.table")
### * wtd.table

flush(stderr()); flush(stdout())

### Name: wtd.table
### Title: Weighted one-way and two-way frequency tables.
### Aliases: wtd.table

### ** Examples

data(hdv2003)
wtd.table(hdv2003$sexe, weights=hdv2003$poids)
wtd.table(hdv2003$sexe, weights=hdv2003$poids, normwt=TRUE)
table(hdv2003$sexe, hdv2003$hard.rock)
wtd.table(hdv2003$sexe, hdv2003$hard.rock, weights=hdv2003$poids)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
