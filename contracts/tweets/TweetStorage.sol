pragma solidity 0.5.1;


contract TweetStorage {
  // storing tweets (TweetId uint is key and the tweet as value)
  mapping(uint => Tweet) public tweets;

  struct Tweet {
      uint id;
      string text;
      uint userId;
      uint postedAt;
  }
  // for tweet to automatically get a tweet id 
  uint latestTweetId = 0; 

  function createTweet (uint _userId, string memory _text) public returns(uint) {
      latestTweetId++; 
     
      tweets[latestTweetId] = Tweet(latestTweetId, _text, _userId, now); // built-in now variable-time stamp

      return latestTweetId;

  }

}

