library(caret)

tr_data = read.csv(file = 'train.csv')
tt_data = read.csv(file = 'test.csv')
hdr = header(tr_data)
tdr = header(tt_data)

df_train = as.data.frame(tr_data)
df_test = as.data.frame(tt_data)

levels(df_train$satisfaction) = c(0,1)
levels(df_test$satisfaction) = c(0,1)

model = train(satisfaction~Departure.Arrival.time.convenient,data=dfr, method = "nnet", linout = TRUE)

train = train(satisfaction~., data = dfr, method = "nnet", trControl = trainControl(method="cv",number=10), na.action=na.exclude)
pred = predict(train, newdata = df_test)

#83.05% accuracy
