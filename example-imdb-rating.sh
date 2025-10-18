# get rating for IMDB
# >7 good
# <7 Average
# >9 super
input=$1

if [ -z "$input" ]; then
  echo Input is Missing
  exit
fi

percentage=$(curl -s  https://www.themoviedb.org/movie/${input} | grep user_score_chart | grep data-percent | xargs -n1 | grep data-percent | awk -F= '{print $2}')

if [ "$percentage" -ge 70 ]; then
  echo ${input} movie is good
else
  echo ${input} movie is bad
fi