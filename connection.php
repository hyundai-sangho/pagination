<?php

require_once __DIR__ . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$host =  $_ENV['HOST'];
$user = $_ENV['USER'];
$password = $_ENV['PASSWORD'];
$dbName = $_ENV['DBNAME'];

$connection = new mysqli($host, $user, $password, $dbName);

/* DB 연결 확인 */
if ($connection) {
  // echo "연결 성공". "<br>";
} else {
  die('연결 실패: ' . mysqli_error($conn));
}

// mysqli_close($connection);
