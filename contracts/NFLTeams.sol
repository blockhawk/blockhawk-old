pragma solidity ^0.4.15;

contract NFLTeams {

  struct Team {
    string nickname;
  }

  mapping(bytes3 => Team) public teams;

  function NFLTeams() {
    teams["ARI"] = Team({
      nickname: "Cardinals"
    });
    teams["ATL"] = Team({
      nickname: "Falcons"
    });
    teams["BAL"] = Team({
      nickname: "Ravens"
    });
    teams["BUF"] = Team({
      nickname: "Bills"
    });
    teams["CAR"] = Team({
      nickname: "Panthers"
    });
    teams["CHI"] = Team({
      nickname: "Bears"
    });
    teams["CIN"] = Team({
      nickname: "Bengals"
    });
    teams["CLE"] = Team({
      nickname: "Browns"
    });
    teams["DAL"] = Team({
      nickname: "Cowboys"
    });
    teams["DEN"] = Team({
      nickname: "Broncos"
    });
    teams["DET"] = Team({
      nickname: "Lions"
    });
    teams["GB"] = Team({
      nickname: "Packers"
    });
    teams["HOU"] = Team({
      nickname: "Texans"
    });
    teams["IND"] = Team({
      nickname: "Colts"
    });
    teams["JAX"] = Team({
      nickname: "Jaguars"
    });
    teams["KC"] = Team({
      nickname: "Chiefs"
    });
    teams["LA"] = Team({
      nickname: "Rams"
    });
    teams["LAC"] = Team({
      nickname: "Chargers"
    });
    teams["MIA"] = Team({
      nickname: "Dolphins"
    });
    teams["MIN"] = Team({
      nickname: "Vikings"
    });
    teams["NE"] = Team({
      nickname: "Patriots"
    });
    teams["NO"] = Team({
      nickname: "Saints"
    });
    teams["NYG"] = Team({
      nickname: "Giants"
    });
    teams["NYJ"] = Team({
      nickname: "Jets"
    });
    teams["OAK"] = Team({
      nickname: "Raiders"
    });
    teams["PHI"] = Team({
      nickname: "Eagles"
    });
    teams["PIT"] = Team({
      nickname: "Steelers"
    });
    teams["SEA"] = Team({
      nickname: "Seahawks"
    });
    teams["SF"] = Team({
      nickname: "49ers"
    });
    teams["TB"] = Team({
      nickname: "Buccaneers"
    });
    teams["TEN"] = Team({
      nickname: "Titans"
    });
    teams["WAS"] = Team({
      nickname: "Redskins"
    });
  }
}
