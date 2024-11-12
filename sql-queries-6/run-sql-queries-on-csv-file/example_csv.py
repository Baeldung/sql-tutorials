import pandas as pd
from pandasql import sqldf 

# Load the CSV file into a DataFrame 
df = pd.read_csv('data.csv') 

# Define the query function 
pysqldf = lambda q: sqldf(q, globals()) 

# Example 1: Getting average weight 
avg_weight_query = "SELECT AVG(weight) AS avg_weight FROM df" 
avg_weight = pysqldf(avg_weight_query) 
print(avg_weight) 


# Example 2: Count individuals by gender 
count_gender_query = "SELECT sex, COUNT(*) AS count FROM df GROUP BY sex" 
count_gender = pysqldf(count_gender_query) 
print(count_gender)
