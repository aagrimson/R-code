library(arules)



library(tidyr)
library(dplyr)



# examples
data("Epub")
data("Adult")

## Mine association rules.
rules <- apriori(Adult, parameter = list(supp = 0.5, conf = 0.9, target = "rules"))
summary(rules)

rules <- apriori(Epub, parameter = list(supp = 0.5, conf = 0.9, target = "rules"))

############################################################


data <- read.csv("~/GitHub/sptn projects/category_closure/baskets_group_no_sample.csv")

trans = read.transactions("baskets_group_no_sample.csv", format = "single", sep = ",", cols = c("TRANSACTION_KEY", "GROUP_NO"))


inspect(trans)


rules <- apriori(trans, parameter = list(supp = 0.01, conf = 0.5, target = "rules"))
summary(rules)

