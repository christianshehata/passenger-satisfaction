train <- read.csv(file = 'train.csv')
test <- read.csv(file = 'test.csv')

head(train)
str(train)
summary(train)

head(test)
str(test)
summary(test)

#plots
plot(train$satisfaction ~ train$Flight.Distance)
plot(train$satisfaction ~ train$Baggage.handling)
plot(train$satisfaction ~ train$Inflight.service)
plot(train$satisfaction ~ train$Inflight.entertainment)
plot(train$satisfaction ~ train$Food.and.drink)
plot(train$satisfaction ~ train$Type.of.Travel)
plot(train$satisfaction ~ train$On.board.service)
plot(train$satisfaction ~ train$Seat.comfort)
plot(train$satisfaction ~ train$Cleanliness)


#boxplots
boxplot(train$Flight.Distance)
boxplot(train$On.board.service)
boxplot(train$Seat.comfort)
boxplot(train$Cleanliness)
boxplot(train$Inflight.service)
boxplot(train$Inflight.entertainment)
boxplot(train$Food.and.drink)
boxplot(train$Baggage.handling)