library("rstudioapi")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

source("basketball_dataset.R")

Games
rownames(Games)
colnames(Games)
Games["KobeBryant", "2012"]

# FG per game
round(FieldGoals / Games, 1)

# Minutes per game
round(MinutesPlayed / Games)

# FGA per game
round(FieldGoalAttempts / Games, 1)

# FG per FGA
round(FieldGoals / FieldGoalAttempts, 4) * 100
