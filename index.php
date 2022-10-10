<?php

require_once 'connection.php';

$num_per_page = 5;

if (isset($_GET['page'])) {
  $page = $_GET['page'];
} else {
  $page = 1;
}

$start_from = ($page - 1) * 5;

$sql = "SELECT * FROM employees limit $start_from, $num_per_page";
$result = mysqli_query($connection, $sql);
?>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pagination in PHP</title>

  <style>
    table {
      border-collapse: collapse;
    }

    td,
    th {
      padding: 10px;
    }

    a {
      text-decoration: none;
      margin-left: 10px;
    }

    #pageNumber {
      width: 100px;
      margin: 0 auto;
      margin-top: 10px;
      text-align: center;
    }
  </style>
</head>

<body>
  <table align="center" border="1px">
    <tr>
      <th>직원 ID</th>
      <th>직원 이름</th>
      <th>직원 메일</th>
      <th>직원 연봉</th>
    </tr>

    <?php
    while ($row = mysqli_fetch_array($result)) { ?>
      <tr>
        <td><?= $row['Employee_ID'] ?></td>
        <td><?= $row['Name'] ?></td>
        <td><?= $row['Email'] ?></td>
        <td><?= $row['Salary'] ?></td>
      </tr>
    <?php } ?>
  </table>

  <div id="pageNumber">
    <?php
    $sql = "SELECT * FROM employees";
    $result = mysqli_query($connection, $sql);
    $total_records = mysqli_num_rows($result);
    $total_pages = ceil($total_records / $num_per_page);

    for ($i = 1; $i <= $total_pages; $i++) {
      echo "<a href='index.php?page=" . $i . "'>" . $i . "</a>";
    }
    ?>
  </div>
</body>

</html>
