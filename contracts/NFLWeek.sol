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
    week = 5;
    games.push(Game("TB", 0, 55, "NE", 0, State.Scheduled, 1507249500));
    games.push(Game("NYG", 0, -35, "LAC", 0, State.Scheduled, 1507482000));
    games.push(Game("CIN", 0, -30, "BUF", 0, State.Scheduled, 1507482000));
    games.push(Game("CLE", 0, -10, "NYJ", 0, State.Scheduled, 1507482000));
    games.push(Game("PIT", 0, -85, "JAX", 0, State.Scheduled, 1507482000));
    games.push(Game("MIA", 0, 30, "TEN", 0, State.Scheduled, 1507482000));
    games.push(Game("IND", 0, -15, "SF", 0, State.Scheduled, 1507482000));
    games.push(Game("PHI", 0, -65, "ARI", 0, State.Scheduled, 1507482000));
    games.push(Game("DET", 0, -25, "CAR", 0, State.Scheduled, 1507482000));
    games.push(Game("LA", 0, -15, "SEA", 0, State.Scheduled, 1507493100));
    games.push(Game("OAK", 0, -25, "BAL", 0, State.Scheduled, 1507493100));
    games.push(Game("DAL", 0, -20, "GB", 0, State.Scheduled, 1507494300));
    games.push(Game("HOU", 0, 15, "KC", 0, State.Scheduled, 1507509000));
    games.push(Game("CHI", 0, 30, "MIN", 0, State.Scheduled, 1507595400));
  }

  function gamesCount() external constant returns (uint256) {
    return games.length;
  }

  /*function updateGame() external onlyOwner {

  }

  function finalizeGame() {

  }*/
}
