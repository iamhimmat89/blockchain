pragma solidity 0.5.1;

contract MyContract {
    string public constant stringvalue = "myvalue";
    bool public mybool = true;
    int public myint = -1;
    uint public myuint = 1;
    uint8 public myuint8 = 8;
    uint256 public myuint256 = 9999;
    
    enum State { Waiting, Ready, Active }
    State public state; 
    
    constructor() public{
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }
    
    
    uint256 public peopleCount = 0;
    
    //Person[] public people;  -- Array
    mapping(uint => Person) public people; // mapping
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName); // -- Used to add into mapping
        //people.push(Person(_firstName, _lastName)); -- Used to add into array 
    }
}
