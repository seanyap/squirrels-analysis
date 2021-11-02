all : nyc_squirrels.csv
	awk -f "./src/main.awk" ./data/nyc_squirrels.csv

nyc_squirrels.csv : data
	wget https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-10-29/nyc_squirrels.csv -P data

data :
	mkdir data