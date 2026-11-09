from pathlib import Path
import pandas as pd

dataDir = Path("data")

for file in dataDir.glob("*.csv"):
	df = pd.read_csv(file)
	#Print file names
	print(f"\n{'-' * 60}")
	print(file.name)
	print(f"\n{'-' * 60}")
	#List data for csv file
	#print(df.shape)
	print(df.columns.to_list())
	#print(df.head())
