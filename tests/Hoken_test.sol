// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/Hoken.sol";

contract HokenTest {

    Hoken s;
    function beforeAll () public {
        s = new Hoken();
    }

    function testTokenNameAndSymbol () public {
        Assert.equal(s.name(), "Hoken", "token name did not match");
        Assert.equal(s.symbol(), "HTK", "token symbol did not match");
    }
}