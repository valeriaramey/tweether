pragma solidity 0.5.1;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../../contracts/tweets/TweetStorage.sol";

contract TestTweetStorage {
    function testCreateTweet() public {
        TweetStorage _storage = TweetStorage(DeployedAddresses.TweetStorage());

        uint _userId = 1;
        uint _expectedTweetId = 1;

        Assert.equal(
            _storage.createTweet(_userId, "Hello World"),
            _expectedTweetId,
            "Should Create tweet with ID 1"
        );
    }
}