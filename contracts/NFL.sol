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

contract NFL is Ownable {
  mapping(bytes3 => Team) public teams;

  struct Team {
    // logoUrl = https://static-hosted.stats.com/GZ/images/NFLlogos/{{city}}{{nickname}}.png
    string city;
    string nickname;
  }

  struct Game {
    bytes3 homeTeam;
    uint8 homeTeamScore;
    uint8 spread;
    bytes3 awayTeam;
    uint8 awayTeamScore;
    State state;
    uint256 startTime;
  }

  enum State { Scheduled, Completed }

  function NFL() {
    teams["ARI"] = Team({
      city: "Arizona",
      nickname: "Cardinals"
    });
    teams["ATL"] = Team({
      city: "Atlanta",
      nickname: "Falcons"
    });
    teams["BAL"] = Team({
      city: "Baltimore",
      nickname: "Ravens"
    });
    teams["BUF"] = Team({
      city: "Buffalo",
      nickname: "Bills"
    });
    teams["CAR"] = Team({
      city: "Carolina",
      nickname: "Panthers"
    });
    teams["CHI"] = Team({
      city: "Chicago",
      nickname: "Bears"
    });
    teams["CIN"] = Team({
      city: "Cincinnati",
      nickname: "Bengals"
    });
    teams["CLE"] = Team({
      city: "Cleveland",
      nickname: "Browns"
    });
    teams["DAL"] = Team({
      city: "Dallas",
      nickname: "Cowboys"
    });
    teams["DEN"] = Team({
      city: "Denver",
      nickname: "Broncos"
    });
    teams["DET"] = Team({
      city: "Detroit",
      nickname: "Lions"
    });
    teams["GB"] = Team({
      city: "Green Bay",
      nickname: "Packers"
    });
    teams["HOU"] = Team({
      city: "Houston",
      nickname: "Texans"
    });
    teams["IND"] = Team({
      city: "Indianapolis",
      nickname: "Colts"
    });
    teams["JAX"] = Team({
      city: "Jacksonville",
      nickname: "Jaguars"
    });
    teams["KC"] = Team({
      city: "Kansas City",
      nickname: "Chiefs"
    });
    teams["LA"] = Team({
      city: "Los Angeles",
      nickname: "Rams"
    });
    teams["LAC"] = Team({
      city: "Los Angeles",
      nickname: "Chargers"
    });
    teams["MIA"] = Team({
      city: "Miami",
      nickname: "Dolphins"
    });
    teams["MIN"] = Team({
      city: "Minnesota",
      nickname: "Vikings"
    });
    teams["NE"] = Team({
      city: "New England",
      nickname: "Patriots"
    });
    teams["NO"] = Team({
      city: "New Orleans",
      nickname: "Saints"
    });
    teams["NYG"] = Team({
      city: "New York",
      nickname: "Giants"
    });
    teams["NYJ"] = Team({
      city: "New York",
      nickname: "Jets"
    });
    teams["OAK"] = Team({
      city: "Oakland",
      nickname: "Raiders"
    });
    teams["PHI"] = Team({
      city: "Philadelphia",
      nickname: "Eagles"
    });
    teams["PIT"] = Team({
      city: "Pittsburgh",
      nickname: "Steelers"
    });
    teams["SEA"] = Team({
      city: "Seattle",
      nickname: "Seahawks"
    });
    teams["SF"] = Team({
      city: "San Francisco",
      nickname: "49ers"
    });
    teams["TB"] = Team({
      city: "Tampa Bay",
      nickname: "Buccaneers"
    });
    teams["TEN"] = Team({
      city: "Tennessee",
      nickname: "Titans"
    });
    teams["WAS"] = Team({
      city: "Washington",
      nickname: "Redskins"
    });
  }

  function createWeek(uint8 week) external onlyOwner returns (NFLWeek contractAddress) {
    return new NFLWeek(week);
  }
}

contract NFLWeek /* is Ownable */ {
  NFL baseContract;
  uint8 public week;

  function NFLWeek(uint8 _week) {
    baseContract = NFL(msg.sender);
    week = _week;
  }
}
