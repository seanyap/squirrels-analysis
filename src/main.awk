BEGIN {FS=","; total=0; gray=0; cinnamon=0; black=0}

# avoid processing heading row
NR>1 {
  total++
  $9 = tolower($9)
  if ($9 == "gray") {
    gray++
  }
  else if ($9 == "cinnamon") {
    cinnamon += 1
  }
  else if ($9 == "black") {
    black += 1
  }
}

END {

  print "\n Central Park Squirrels"
  print  "+-----------+----------+"
  printf "| Colors    |  Number  |\n"
  print  "+-----------+----------+"
  printf "| Gray      |%7d   |\n", gray; 
  printf "| Cinnomon  |%7d   |\n", cinnamon;
  printf "| Black     |%7d   |\n", black;
  printf "| Other     |%7d   |\n", total - gray - cinnamon - black
  print  "+-----------+----------+"
  printf "| Total     |%7d   |\n",total;
  print  "+-----------+----------+"
}