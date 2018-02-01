# Sorting

## Get top n whatevers 
- This sorts just the salesforce_id column (1st colum) and 
- counts the number of appearances of an id (it's grouped by month so 12 is the max times an sfid can appear). 
- The head gives  you the top ones

cat usage-agg-grouped.csv | awk -F',' '{ print$1 }' | sort | uniq -c| sort -r | head -100