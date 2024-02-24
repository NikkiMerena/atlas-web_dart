int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int totalPointsTeamA = 0;
  int totalPointsTeamB = 0;

  // Calculate total points for Team A
  teamA.forEach((shotType, shots) {
    if (shotType == 'Free throws') {
      totalPointsTeamA += shots;
    } else if (shotType == '2 pointers') {
      totalPointsTeamA += shots * 2;
    } else if (shotType == '3 pointers') {
      totalPointsTeamA += shots * 3;
    }
  });

  // Calculate total points for Team B
  teamB.forEach((shotType, shots) {
    if (shotType == 'Free throws') {
      totalPointsTeamB += shots;
    } else if (shotType == '2 pointers') {
      totalPointsTeamB += shots * 2;
    } else if (shotType == '3 pointers') {
      totalPointsTeamB += shots * 3;
    }
  });

  // Compare total points and determine the winner
  if (totalPointsTeamA > totalPointsTeamB) {
    return 1;
  } else if (totalPointsTeamA < totalPointsTeamB) {
    return 2;
  } else {
    return 0;
  }
}

void main() {
  var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers' : 16};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers' : 13};

  print(whoWins(teamA, teamB));
}
