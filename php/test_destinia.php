<?php

/* Test Destinia 2015-03-16 Moisés Díaz */

// Enables garbage collector
gc_enable();

require_once("Hotel.php");
require_once("Apartment.php");
require_once("DBConnection.php");

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

	$accomodationName=extractAccomodationName($entry);

	if(!empty($accomodationName)){
		$results=searchInDatabase($accomodationName);

		if(empty($results))
			printf("We have not founds results for %s \n",implode(' ',$entry));
		else
			printResults($results);
	}
	else
		printf("We have not founds results for %s \n",implode(' ',$entry));
}

/**
 * if the user types "Hotel Gran via" or "Cervantes Apartments" this funcions removes words 'Hotel' or 'Apartments' because are not useful for the search
 * @param string $entry
 * @return string $hotelName
 */
function extractAccomodationName($entry){
	$accomodationName="";
	/**
	 * it suppose that the forbidden words should be extracted from the database where there aren't the words 'Hotel' or 'Apartments' and variations
	 * in other languages. For this test I think the array is enough
	 */
	$forbiddenWords  = array("hotel", "apartamentos", "apartments", "appartements", "apartamento", "apartment", "appartement");
	foreach($entry as $word){
		if(!in_array(strtolower($word), $forbiddenWords)){
			$accomodationName=$word;
			break;
		}
	}
	return $accomodationName;
}

/*I use a class for connecting to the database, I am sure that the $hotelName is a real name and not words 'hotel' o similar that are not useful for the search
 * in this function we launch the sql to the database and collect the different info of the element returned
 * @param string accomodationName
 * @return array $results
 */
function searchInDatabase($accomodationName){

	$key =  substr($accomodationName, 0, 3);
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
				WHERE search.name LIKE '%$key'
				ORDER BY search.name ASC";

    $fields=array("name", "stars", "guests", "type_room", "city_name","country_name", "availability");

	$DBConnection = new DBCOnnection();
    $results= $DBConnection->launchSelectQuery($query, $fields);
    $i=0;
	while($i < count($results)){
		if(empty($results[$i][1])){
			$results[]= new Apartment($results[$i][0], $results[$i][2], $results[$i][3], $results[$i][6], $results[$i][4], $results[$i][5]);
		}else{
			$results[]= new Hotel($results[$i][0], $results[$i][1], $results[$i][3], $results[$i][4], $results[$i][5]);
		}
        $i++;
	}
	return $results;
}

/**
 * It is supposse that in this function we connect with the database or with the browser and get the language of the user, for this text I put english as a default
 * @return string $language
 */ 
function getUserLanguage(){
	return 'en';
}

/**
 * With the results of the function searchInDatabase, we go through the array and print the info, depending the type of object we print a text or other different
 * @param array
 */
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

/**
 * for the function printResults we need a few texts in the language of the user, this function provides this texts
 * @return array
 */
function outputTexts(){
	if(getUserLanguage() == 'en'){
		$texts = array('Stars', 'Apartments', 'Adults');
	}else{
		$texts = array('Estrellas', 'Apartamentos', 'Adultos');
	}
	return $texts;
}
