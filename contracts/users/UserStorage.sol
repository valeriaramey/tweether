pragma solidity 0.5.1;

contract UserStorage {

    // storing profiles (user's ID is a key and its full Profile object as value)
    mapping(uint => Profile) public profiles;

    struct Profile {
      uint id;
      bytes32 username; // restricting usrnm length to 32 characters to save gas costs
    }
    // for user to automatically get a unique ID
    uint latestUserId = 0; // will increment ever createUser function is called

    function createUser(bytes32 _username) public returns(uint) {
        latestUserId++;
        // assigning Profile value to the key in the profiles mapping
        profiles[latestUserId] = Profile(latestUserId, _username);

        return latestUserId;  
    }
}