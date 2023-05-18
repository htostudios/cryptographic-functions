// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // The Keccak-256 Function
    function hash(string memory _input) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_input));
    }

    // RIPEMD160
    function ripemd160Hash(string memory _input) public pure returns(bytes20) {
        return ripemd160(abi.encodePacked(_input));
    }

    // SHA256
    function sha256Hash(string memory _input) public pure returns(bytes32) {
        return sha256(abi.encodePacked(_input));
    }

    // ecrecover
    function verify(bytes32 _message, uint8 _v, bytes32 _r, bytes32 _s, address _signer) public pure returns(bool) {
        bytes32 messageHash = keccak256(abi.encodePacked(_message));
        address recoveredAddress = ecrecover(messageHash, _v, _r, _s);
        return recoveredAddress == _signer;
    }
}