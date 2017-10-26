pragma solidity ^0.4.17;

contract BlockhawkNFL {
  enum State { Scheduled, Live, Completed }

  struct Week {
    uint8 week;
    uint32[] games;
  }

  struct Game {
    uint32 id;
    bytes3 homeTeam;
    uint8 homeTeamScore;
    bytes3 awayTeam;
    uint8 awayTeamScore;
    State state;
    uint256 startTime;
    string displayText;
  }

  Week[] public gameWeeks;
  mapping(uint32 => Game) public game;

  function weeksCount() external constant returns (uint256) {
    return gameWeeks.length;
  }

  function addWeek(uint8 week, uint32[] games) external onlyOwner {
    gameWeeks.push(Week(week, games));
  }
}
