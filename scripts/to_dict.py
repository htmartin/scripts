Follow these steps:

Suppose your dataframe is as follows:

>>> df
   A  B  C ID
0  1  3  2  p
1  4  3  2  q
2  4  0  9  r
1. Use set_index to set ID columns as the dataframe index.

    df.set_index("ID", drop=True, inplace=True)
2. Use the orient=index parameter to have the index as dictionary keys.

    dictionary = df.to_dict(orient="index")

The results will be as follows:

    >>> dictionary
    {'q': {'A': 4, 'B': 3, 'D': 2}, 'p': {'A': 1, 'B': 3, 'D': 2}, 'r': {'A': 4, 'B': 0, 'D': 9}}



3. If you need to have each sample as a list run the following code. Determine the column order

column_order= ["A", "B", "C"] #  Determine your preferred order of columns
d = {} #  Initialize the new dictionary as an empty dictionary
for k in dictionary:
    d[k] = [dictionary[k][column_name] for column_name in column_order]


	
See the docs for to_dict. You can use it like this:

df.set_index('id').to_dict()
And if you have only one column, to avoid the column name is also a level in the dict (actually, in this case you use the Series.to_dict()):

df.set_index('id')['value'].to_dict()