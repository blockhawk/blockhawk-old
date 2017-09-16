var NFL = artifacts.require("./NFL.sol");

module.exports = function(deployer) {
  deployer.deploy(NFL, 16);
};
