data = read.csv("Athena_survey_data.csv")

### Step 1: Evaluate the data
library("REdaS")
bart_spher(data[,7:46])

library("psych")
KMO(data[,7:46])

### Step 2: Determine the number of factors
library("FactoMineR")
pca <- PCA(data[,7:46], scale = TRUE)
summary(pca)

# eigenvalues
pca$eig

# visualize eigenvalues / screeplot
library("factoextra")
fviz_eig(pca)

### Step 3: Extract the factor solution (varimax rotation)
fit <- factanal(data[,7:46], factors=4, rotation="varimax")

# loadings
fit$loadings
data_table = as.table(fit$loadings)
data_table
# write.csv(data_table, "score.csv")

# loadingplot
plot(fit$loadings, main = "Factor loadings", xlab = "Factor 1", 
     ylab = "Factor 2", col="blue", bg = "blue", pch=21)
text(fit$loadings, labels = rownames(fit$loadings))
abline(h=0, v=0, col="purple")


# Step 4: Create and name the factor scores
scores <- factor.scores(data[,7:46], fit$loadings)$scores
athena = data
athena$Seriously_orientation = scores[,1]
athena$Adventurous_orientation = scores[,2]
athena$Goal_orientation = scores[,3]
athena$Team_orientation = scores[,4]


############## **CLUSTER ANALYSIS

### Step 1: determine the number of clusters
# create a dissimilarity matrix
d5 <- dist(athena[,49:52], method = "euclidean")

# perform hierarchical clustering using Ward's method on this matrix
hc5 <- hclust(d5, method="ward.D") 

# plot the resultingendrogram
plot(hc5, cex = 0.6, hang = -1)
fviz_nbclust(athena[,49:52], kmeans, method = "wss")


# Step 2: Calculate the final cluster solution
# note that K-Means uses a random seed; if you want to see the same 
# result you got before, use the same seed
set.seed(42)

# run K-Means to find 3 clusters
kmeans.solution <- kmeans(athena[,49:52], centers = 5)

# create new variable showing who is in which cluster
athena$cluster <- kmeans.solution$cluster
# View(scores)

# Step 3: Interpret the K-means output
# look at the cluster centers to distinguish each cluster
# (we want to look for high & low values)
kmeans.solution$centers

# visualize K-means clusters
fviz_cluster(kmeans.solution, data=athena[,49:52])
athena$cluster = factor(athena$cluster)

# Step 5: Add labels to the clusters
library(plyr)
athena$cluster.label <- revalue(as.character(athena$cluster),
                                c("1"="Goal seekers", "2"="Creative team players", "3"="Ambitious helpers", "4"="Non-gamer", "5"="Casual individual player"))







############### Crosstab

# run cross tabulation (gender, age, income, location)
library(gmodels)
### gender
CrossTable(athena$cluster.label, athena$gender,expected=TRUE) 

### age
# recode age variable
summary(athena$age)
athena$ageNew = "35-55 years"
athena$ageNew[athena$age < 35] <- "< 35 years"
athena$ageNew[athena$age >= 55] <- "55+ years"
unique(athena$ageNew)
CrossTable(athena$cluster.label, athena$ageNew,expected=TRUE)

### income
# recode income variable
summary(athena$income)
athena$IncomeNew = "25-60K"
athena$IncomeNew[athena$income < 25000] <- "< 25K"
athena$IncomeNew[athena$income > 60000] <- "over 60K"
CrossTable(athena$cluster.label, athena$IncomeNew,expected=TRUE) 

### income
# recode income variable
library(sqldf)
athena$stateNew = "South"
athena$stateNew[athena$state %in% c("OH","IN","IL","MI","WI","MN","IA","MO","ND","SD","NE","KS")] <- "Midwest"

athena$stateNew[athena$state %in% c("ME","NH","VT","MA","RI","CT","NY","NJ","PA")] <- "Northeast"

athena$stateNew[athena$state %in% c("MT","ID","WY","CO","NM","AZ","UT","NV")] <- "West"

athena$stateNew[athena$state %in% c("WA","OR","CA","AK","HI")] <- "Pacific"

CrossTable(athena$cluster.label, athena$stateNew,expected=TRUE) 

### regression
model_age = lm(age~relevel(factor(cluster.label),ref=3),data=athena)
summary(model_age)

model_income = lm(income~relevel(factor(cluster.label),ref=5),data=athena)
summary(model_income)



######### price analysis
summary(athena$gg.max.price)
unique(athena$game.presented)

WG = as.data.frame(athena$gg.max.price[athena$game.presented=="Warrior Guild"])
colnames(WG) = "max.price"
EC = as.data.frame(athena$gg.max.price[athena$game.presented=="Evercrest"])
colnames(EC) = "max.price"
SG = as.data.frame(athena$gg.max.price[athena$game.presented=="Seraph Guardians"])
colnames(SG) = "max.price"


### WG
# calculate cumuative customers WTP at given price and expected revenue (# cust WTP * price)
cumulative.wtp <- data.frame()
for (price in seq(min(WG$max.price), max(WG$max.price), 5)) {
  num.respondents.wtp <- sum(WG$max.price >= price)
  cumulative.wtp <- rbind(cumulative.wtp, 
                          data.frame(price=price, 
                                     per.customers.wtp=num.respondents.wtp/nrow(WG),
                                     pred.revenue=num.respondents.wtp*price))
}

# plot customers willing to pay as a function of price
library(ggplot2)
ggplot(cumulative.wtp, aes(x=price, y=per.customers.wtp)) +
  geom_line() + geom_point() + 
  theme_bw() + ylab("Percent customers willing to pay")

# plot revenue as a function of price
ggplot(cumulative.wtp, aes(x=price, y=pred.revenue)) +
  geom_line() + geom_point() + 
  theme_bw() + ylab("Predicted revenue")

cumulative.wtp

### EC
# calculate cumuative customers WTP at given price and expected revenue (# cust WTP * price)
cumulative.wtp <- data.frame()
for (price in seq(min(EC$max.price), max(EC$max.price), 5)) {
  num.respondents.wtp <- sum(EC$max.price >= price)
  cumulative.wtp <- rbind(cumulative.wtp, 
                          data.frame(price=price, 
                                     per.customers.wtp=num.respondents.wtp/nrow(EC),
                                     pred.revenue=num.respondents.wtp*price))
}

# plot customers willing to pay as a function of price
library(ggplot2)
ggplot(cumulative.wtp, aes(x=price, y=per.customers.wtp)) +
  geom_line() + geom_point() + 
  theme_bw() + ylab("Percent customers willing to pay")

# plot revenue as a function of price
ggplot(cumulative.wtp, aes(x=price, y=pred.revenue)) +
  geom_line() + geom_point() + 
  theme_bw() + ylab("Predicted revenue")

cumulative.wtp

### SG
# calculate cumuative customers WTP at given price and expected revenue (# cust WTP * price)
cumulative.wtp <- data.frame()
for (price in seq(min(SG$max.price), max(SG$max.price), 5)) {
  num.respondents.wtp <- sum(SG$max.price >= price)
  cumulative.wtp <- rbind(cumulative.wtp, 
                          data.frame(price=price, 
                                     per.customers.wtp=num.respondents.wtp/nrow(SG),
                                     pred.revenue=num.respondents.wtp*price))
}

# plot customers willing to pay as a function of price
library(ggplot2)
ggplot(cumulative.wtp, aes(x=price, y=per.customers.wtp)) +
  geom_line() + geom_point() + 
  theme_bw() + ylab("Percent customers willing to pay")

# plot revenue as a function of price
ggplot(cumulative.wtp, aes(x=price, y=pred.revenue)) +
  geom_line() + geom_point() + 
  theme_bw() + ylab("Predicted revenue")

cumulative.wtp

