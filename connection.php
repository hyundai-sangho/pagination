<?php
$host = "localhost";
$user = "root";
$password = "";
$dbName = "pagination";

$connection = new mysqli($host, $user, $password, $dbName);

/* DB 연결 확인 */
if ($connection) {
  // echo "연결 성공". "<br>";
} else {
  die('연결 실패: ' . mysqli_error($conn));
}

// mysqli_close($connection);
