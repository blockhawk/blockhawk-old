var NFL = artifacts.require("./NFL.sol");
var NFLTeams = artifacts.require('./NFLTeams.sol');

module.exports = function(deployer) {
  deployer.deploy(NFL, 16);
  deployer.deploy(NFLTeams);
};
