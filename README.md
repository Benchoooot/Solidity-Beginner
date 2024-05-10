# Solidity-Beginner

# MyToken
This is a simple implementation of a cryptocurrency or token on the Ethereum blockchain. It allows users to create new tokens, transfer tokens between addresses, and burn or destroy tokens.

# Variables
**tokenName**: A string variable that stores the name of the token.

**tokenAbbreviation**: A string variable that stores the abbreviation of the token.

**totalSupply**: A uint variable that stores the total number of tokens in circulation.

**balances**: A mapping variable that maps each address on the Ethereum blockchain to the number of tokens they own.

# Functions
**constructor()**: A constructor function that is called when the contract is first deployed to the Ethereum blockchain. It sets the tokenName and tokenAbbreviation variables to "My Token" and "MTK", respectively, and sets the totalSupply variable to 0.

**mint(address _address, uint _value)**: A function that allows the contract owner to create new tokens and distribute them to an address. The function takes two parameters: _address, which is the address that will receive the new tokens, and _value, which is the number of tokens to create. The function increases the totalSupply by _value and adds _value to the balance of _address.

**burn(address _address, uint _value)**: A function that allows a user to destroy or burn their tokens. The function takes two parameters: _address, which is the address that owns the tokens to be burned, and _value, which is the number of tokens to burn. The function checks that the balance of _address is greater than or equal to _value, and if so, it decreases the totalSupply by _value and decreases the balance of _address by _value.

# Usage
To use this contract, you will need to deploy it to the Ethereum blockchain using a tool like Truffle or Remix. Once deployed, you can call the mint function to create new tokens and distribute them to an address, and call the burn function to destroy tokens.
