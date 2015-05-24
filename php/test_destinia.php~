<?php

/* Test Destinia 2015-03-16 Moisés Díaz */

// Enables garbage collector
gc_enable();

// Prevent Destinia Libraries Unnecessary requires
define('PREVENT_REQUIRES', true);

// Load Destinia Framework
require_once '/usr/local/global/php/libraries/framework/FW.php';

// Load autoloader class and register autoloader function
require_once ('/web/guide/troovel/php/SplClassLoader.php');
$autoloader = new \SplClassLoader(null, '/web/guide/troovel/php');
$autoloader->register();


main($argv, $argc);

function main($argv, $argc){

	//I'm not sure if the standard entrance is the scanf or the parameters os I have implemented both
	if($argc == 1){
		$str = "fwefwe efwef";
		$entry = sscanf($str,"%s %s %s %s");
	}else{
		$j=0;
		$entry=array();
		for($i=1;$i<$argc;$i++){
			$entry[$j]=$argv[$i];
			$j++;
		}
	}

	$hotelName=extractHotelName($entry);

	if(!empty($hotelName)){
		$results=searchInDatabase($hotelName);

		if(empty($results))
			printf("We have not founds results for %s \n",implode(' ',$entry));
		else
			printResults($results);
	}
	else
		printf("We have not founds results for %s \n",implode(' ',$entry));
}

//if the user types "Hotel Gran via" or "Cervantes Apartments" this funcions removes words 'Hotel' or 'Apartments' because are not useful for the search
function extractHotelName($entry){
	$hotelName="";
	//it suppose that the forbidden words should be extracted from the database where there are the words 'Hotel' or 'Apartments' and variations
	//in other languages. For this test I think the array is enough
	$forbiddenWords  = array("hotel", "apartamentos", "apartments", "appartements", "apartamento", "apartment", "appartement");
	foreach($entry as $word){
		if(!in_array(strtolower($word), $forbiddenWords)){
			$hotelName=$word;
			break;
		}
	}
	return $hotelName;
}

//I use teh Destinia FW for connecting to the database, I suppose we can do it
//Thanks to the function extractHotelName we are sure that the $hotelName is a real name and not words 'hotel' o similar that are not useful for the search
//in this function we launch the sql to the database and collect the different info of the element returned
function searchInDatabase($hotelName){

	$key =  substr($hotelName, 0, 3);
	$lang = getUserLanguage();
	$results=array();

	$sql="SELECT IFNULL(hotel.name,apartment.name) AS name, hotel.stars, apartment.num_guests , IFNULL(room_hotel.name_$lang,room_apartment.name_$lang) AS type_room ,
				city.name_$lang, country.name_$lang, availability.availables
				FROM `test_search` AS search
				LEFT JOIN test_entity AS entity ON entity.id = search.id
				LEFT JOIN test_countries AS country ON country.id = entity.country
				LEFT JOIN test_cities AS city ON city.id = entity.city
				LEFT JOIN test_hotel_info AS hotel ON hotel.entity_id = search.id
				LEFT JOIN test_apartment_info AS apartment ON apartment.entity_id = search.id
				LEFT JOIN test_type_room AS room_hotel ON hotel.type_room = room_hotel.id
				LEFT JOIN test_type_room AS room_apartment ON apartment.type_room = room_apartment.id
				LEFT JOIN test_apartment_availability AS availability ON availability.entity_id = search.id
				WHERE search.name LIKE '%%s%'
				ORDER BY search.name ASC";

	$cursor = \Destinia\Helper::getCursor();
	$cursor->exec($sql, array($key), 'utf8');
	while($row = $cursor->fetch(MYSQL_NUM)){
		if(empty($row[1])){
			$results[]= new Apartment($row[0], $row[2], $row[3], $row[6], $row[4], $row[5]);
		}else{
			$results[]= new Hotel($row[0], $row[1], $row[3], $row[4], $row[5]);
		}
	}
	return $results;
}

//It is supposse that in this function we connect with the database or with the browser and get the language of the user, for this text I put english as a default
function getUserLanguage(){
	return 'en';
}

//with the results of the function searchInDatabase, we go through the array and print the info, depending the type of object we print a text or other different
function printResults($results){

	$texts= outputTexts();
	foreach($results AS $accommodation){
		if($accommodation instanceof Hotel){
			printf("%s, %d %s, %s, %s, %s.\n", $accommodation->getName(), $accommodation->getStars(), $texts[0],$accommodation->getTypeRoom(), $accommodation->getCity(), $accommodation->getCountry());
		}else{
			printf("%s, %d %s, %d %s, %s, %s.\n", $accommodation->getName(), $accommodation->getRoomsAvailables(), $texts[1], $accommodation->getNumGuests(), $texts[2], $accommodation->getCity(), $accommodation->getCountry());
		}
	}
}

//for the function printResults we need a few texts in teh language of the user, this function provides this texts
function outputTexts(){
	if(getUserLanguage() == 'en'){
		$texts = array('Stars', 'Apartments', 'Adults');
	}else{
		$texts = array('Estrellas', 'Apartamentos', 'Adultos');
	}
	return $texts;
}

//Class Hotel with all the parameters needed for being printed
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

//Class Apartment with all the parameters needed for being printed
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