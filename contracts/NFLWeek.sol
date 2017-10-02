pragma solidity ^0.4.15;

contract Ownable {
  address public owner;

  function Ownable() {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }
}

contract NFLWeek is Ownable {
  enum State { Scheduled, Completed }

  struct Game {
    bytes3 homeTeam;
    uint8 homeTeamScore;
    int16 spread;
    bytes3 awayTeam;
    uint8 awayTeamScore;
    State state;
    uint256 startTime;
  }

  uint8 public week;
  Game[] public games;

  function NFLWeek() {
    week = 4;
    games.push(Game("GB", 0, -70, "CHI", 0, State.Scheduled, 1506644700));
    games.push(Game("MIA", 0, 30, "NO", 0, State.Scheduled, 1506864600));
    games.push(Game("NE", 0, -90, "CAR", 0, State.Scheduled, 1506877200));
    games.push(Game("DAL", 0, -65, "LA", 0, State.Scheduled, 1506877200));
    games.push(Game("MIN", 0, -20, "DET", 0, State.Scheduled, 1506877200));
    games.push(Game("HOU", 0, 15, "TEN", 0, State.Scheduled, 1506877200));
    games.push(Game("NYJ", 0, 30, "JAX", 0, State.Scheduled, 1506877200));
    games.push(Game("CLE", 0, 30, "CIN", 0, State.Scheduled, 1506877200));
    games.push(Game("BAL", 0, 30, "PIT", 0, State.Scheduled, 1506877200));
    games.push(Game("ATL", 0, -80, "BUF", 0, State.Scheduled, 1506877200));
    games.push(Game("TB", 0, -30, "NYG", 0, State.Scheduled, 1506888300));
    games.push(Game("LAC", 0, -15, "PHI", 0, State.Scheduled, 1506888300));
    games.push(Game("ARI", 0, -70, "SF", 0, State.Scheduled, 1506888300));
    games.push(Game("DEN", 0, -30, "OAK", 0, State.Scheduled, 1506889500));
    games.push(Game("SEA", 0, -130, "IND", 0, State.Scheduled, 1506904200));
    games.push(Game("KC", 0, -70, "WAS", 0, State.Scheduled, 1506990600));
  }

  function gamesCount() external constant returns (uint256) {
    return games.length;
  }

  /*function updateGame() external onlyOwner {

  }

  function finalizeGame() {

  }*/
}
