// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract StructsDataType{
    /* 
     Struct veri yapısı,birden fazla verinin bir araya getirilmesini sağlıyor.

    */
    struct Person{
        string name;
        uint age;
        string country;
    }

    struct Family {
        Person[] members;
        string surname;
    }

    Person public p1;
    Family public myFamily;

    function createFamily (string memory _surname) public {
        
        //sonra family members bu personi pushla
        myFamily.members.push(p1);
        myFamily.surname = _surname;
    }

    //fonksiyona index numarası ver,members arrayınden ilk personı al.

    function getMember (uint _index) public view returns(string memory name, uint age, string memory country) {
        return(myFamily.members[_index].name,myFamily.members.[_index].age,myFamily.members[_index].country);
    }



    function setPerson(string memory _name, uint _age, string memory _country) public {
        p1 = Person(_name,_age,_country);
    }

    function getPerson() public view returns (string memory name, uint age, string memory country) {
        return (p1.name, p1.age,p1.country);
    }




}