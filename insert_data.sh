#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Deleting current data
echo $($PSQL "TRUNCATE teams, games")

# ONE - Adding each unique team in the teams table -> 24 rows expected
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != "winner" ]] 
  then
    FOUND_TRIG_WINNER=$($PSQL "SELECT name FROM teams WHERE name = '$WINNER'")
    FOUND_TRIG_OPPONENT=$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT'")

    if [[ -z $FOUND_TRIG_WINNER ]] 
    then
      echo -e "\nAdding winner $WINNER to teams database"
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    elif [[ -z $FOUND_TRIG_OPPONENT ]]
    then
      echo -e "\nAdding opponent $OPPONENT to teams database"
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi
  fi
done

# TWO - filling games table with appr values -> 32 rows expected
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]]
  then
    echo -e "\nSelecting winner ID of $WINNER"
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    echo $WINNER_ID

    echo "Selecting opponent ID of $OPPONENT"
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    echo $OPPONENT_ID

    echo "Attempting to add to table games"
    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi 
done