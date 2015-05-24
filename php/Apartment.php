<?php

/**
* Class Apartment with all the parameters needed for being printed
*/
class Apartment {
	private $name;
	private $numGuests;
	private $typeRoom;
	private $availables;
	private $country;
	private $city;

	function __construct($name = '', $numGuests = 0, $typeRoom = 0, $availables = 0, $country = '', $city = ''){
		$this->name = $name;
		$this->numGuests = $numGuests;
		$this->typeRoom = $typeRoom;
		$this->availables= $availables;
		$this->country = $country;
		$this->city = $city;
	}

	function getName() {
		return $this->name;
	}

	function getNumGuests() {
		return $this->numGuests;
	}

	function getTypeRoom() {
		return $this->typeRoom;
	}

	function getRoomsAvailables() {
		return $this->availables;
	}

	function getCity() {
		return $this->city;
	}

	function getCountry() {
		return $this->country;
	}
}
