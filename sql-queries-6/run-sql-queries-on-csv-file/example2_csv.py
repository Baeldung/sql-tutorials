import duckdb 

# Run a query directly on the CSV file 
query = "SELECT AVG(weight) AS avg_weight FROM read_csv_auto('data.csv')" 
avg_weight = duckdb.query(query).to_df() 
print(avg_weight) 

# Another query to count individuals by gender 
count_gender_query = "SELECT sex, COUNT(*) AS count FROM read_csv_auto('data.csv') GROUP BY sex" 
count_gender = duckdb.query(count_gender_query).to_df() 
print(count_gender)
