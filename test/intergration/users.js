// this file tests everything that is user related 
const UserStorage = artifacts.require('UserStorage')

contract('users', () => {

    it("can create user", async () => {
        const storage = await UserStorage.deployed()

        const username = web3.utils.fromAscii("tristan")
        const tx = await storage.createUser(username)

        assert.isOk(tx) // Add this line!
  });
  
    it("can get user", async () => {
        const storage = await UserStorage.deployed()
        const userId = 1
        
        // Get the userInfo array
        const userInfo = await storage.profiles.call(userId)

    // Use the "replace" function at the end:
    const username = web3.utils.toAscii(userInfo[1]).replace(/\u0000/g, '')

    assert.equal(username, "tristan")
  });

})