pragma solidity >=0.5.0 <0.6.0;

contract Calculator {

  uint result;

  event NumberAdded(uint n);
  event NumberSubtracted(uint n);
  event NumberMultiplied(uint n);
  event NumberDivided(uint n);

  Calculator(uint num) public {
    // constructor
    result=num;
  }

  // returns the result
  function getResult() public view returns (uint){
    return result;
  }

  // result = result + num
  function addToNumber(uint num) public returns (uint) {
    result += num;
    emit NumberAdded(num);
    return result;
  }

  // result = result - num
  function substractNumber(uint num) public returns (uint) {
    result -= num;
    emit NumberSubtracted(num);
    return result;
  }

  // result = result * num
  function multiplyWithNumber(uint num) public returns (uint) {
    result *= num;
    emit NumberMultiplied(num);
    return result;
  }

  // result = result / num
  function divideByNumber(uint num) public returns (uint) {
    result /= num;
    emit NumberDivided(num);
    return result;
  }

}
