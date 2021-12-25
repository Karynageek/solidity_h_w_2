// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

interface Students {
    function getStudentsList() external view returns (string[] memory students);
}

contract HW_2 {
    address public home_contract = 0x0E822C71e628b20a35F8bCAbe8c11F274246e64D;

    function getColorByStudent() public view returns (string memory) {
        string[] memory students = Students(home_contract).getStudentsList();

        if (students.length <= 10) {
            return "Red";
        } else if (students.length <= 20) {
            return "Orange";
        } else {
            return "Yellow";
        }
    }
}