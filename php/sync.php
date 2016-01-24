<?php
header('Content-type: application/json; charset=UTF-8');
header("Expires: Mon, 12 Jul 1995 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
$mysqlhost = "localhost";
$mysqluser = "nabu";
$mysqlpwd = "nabu";
$mysqldb = "nabu";

$version_id = $_GET['version_id'];

$link = mysqli_connect($mysqlhost, $mysqluser, $mysqlpwd, $mysqldb);

$link->set_charset("utf8");

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}


$query =   "SELECT * FROM `punkte`";
if ($result = mysqli_query($link, $query)) {
    while ($obj = mysqli_fetch_object($result)) {
        $array1["points"][] = $obj;
    }
    mysqli_free_result($result);
}

$query =   "SELECT * FROM `routen";
if ($result = mysqli_query($link, $query)) {
    while ($obj = mysqli_fetch_object($result)) {
        $array1["routes"][] = $obj;
    }
    mysqli_free_result($result);
}

$query =   "SELECT * FROM `fragen`";
if ($result = mysqli_query($link, $query)) {
    while ($obj = mysqli_fetch_object($result)) {
        $array1["multiple_choice"][] = $obj;
    }
    mysqli_free_result($result);
}

	$query =   "SELECT * FROM `routen_bilder`";
		if ($result = mysqli_query($link, $query)) {
			while ($obj = mysqli_fetch_object($result)) {
				$array1["preview_pictures"][] = $obj;
			}
			mysqli_free_result($result);
		}


// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
}


// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        header("Access-Control-Allow-Methods: GET");         

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
}	

echo json_encode($array1, JSON_NUMERIC_CHECK);


mysqli_close($link);

?>