<?php

/**
* Class Hotel with all the parameters needed for being printed
*/
class Hotel {
	private $name;
	private $stars;
	private $typeRoom;
	private $country;
	private $city;

	function __construct($name = '', $stars = '', $typeRoom = 0, $city = '', $country = ''){
		$this->name = $name;
		$this->stars = $stars;
		$this->typeRoom = $typeRoom;
		$this->country = $country;
		$this->city = $city;
	}

	function getName() {
		return $this->name;
	}

	function getStars() {
		return $this->stars;
	}

	function getTypeRoom() {
		return $this->typeRoom;
	}

	function getCity() {
		return $this->city;
	}

	function getCountry() {
		return $this->country;
	}
}
