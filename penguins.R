library(palmerpenguins)

# head(penguins)
# tail(penguins)

df <- penguins 

df$row_id <- seq.int(nrow(df)) ## add row ID as question asks about individuals

head(df)

df <- df[complete.cases(df), ]

nrow(df)

head(df)
tail(df)

write.csv(df, "penguins_cleaned.csv", row.names = FALSE)
