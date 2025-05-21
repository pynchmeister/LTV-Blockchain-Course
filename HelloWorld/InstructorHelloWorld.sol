// versioning below
pragma solidity 0.8.30;

// define contract or name your contract
/*
This is the first line of my comment
this is the second of comment 
*/
contract Hello {
        // string called message with its associated value
        // these are all key value pairs
        string message = "Hello Class";

         // state variables are declared outside of functions at the contract level
        // state variables are stored permanently on the blockchain (in contract storage)
        // they gas to write or update
        uint public count; // <-- state variable

        // visibility types control who can access or call variables and functions
        // public, can be accessed by anyone
        // external, the contract has a method that is callable from outside of this contract
        // internal, same as public, but cannot be called out side of this contract
        // private, it cannot be called in any way other than via a function in this contract

        uint public anotherNumber = 9; // accessible by anyone
        uint private secret;    // internal use only

        function increment() public {} // callable by anyone
        function _reset() internal {} // internal use only

        // view vs pure functions
        // these keywords describe how a function interacts with blockchain state
        function getCount() public view returns (uint) {
            return count;       // reads state
        }   
        function double(uint x) public pure returns (uint) {
            return x * 2;    // uses only input, no state
        }
      
      // uint, unsigned integer
        // uint is a data type used to store whole numbers that are always zero
        // or positive
        // its suze 256 bits
        // max value 2^256 -1 
        uint256 public myNumber;
        uint public secondNumber = 25;
        uint public zero = 0;
        // int, stands for signed integer, which is a number that can be positive, negative or zero
        int public negativeNumber = -1;
        int public secondNegativeNumber = -2000;
        int public zeroNumber = 0;

        // bool, boolean, data that's either true or false
        bool public isOpen = true;
        bool public isRaining = false;

        // address, special data type that holds a 20-byte (40 hexidecimal charaacters) Ethereum address
        // msg.sender refers to the address of the account (or contract) that called the current function
        address public owner = msg.sender;
        address public test = 0xE2DFC07f329041a05f5257f27CE01e4329FC64Ef;

      // local variables are declared inside functions
      // they exist temporarily in memory during function execution
      // do not cost gas unless used in transactions
      // Function to update the message
      function setMessage(string memory newMessage) public {
                message = newMessage; // 
                    }

        
}

// Bytecode that the EVM understands and processes
// 60806040526040518060400160405280600b81526020017f48656c6c6f20436c6173730000000000000000000000000000000000000000008152505f90816100479190610320565b506040518060400160405280600681526020017f41424344454600000000000000000000000000
