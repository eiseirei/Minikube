<!DOCTYPE html>
<html lang="ru">
  <head>
    <title>Клиенты организации</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
  </head>
  <body>
    <h1>Клиенты организации</h1>
    <table align="center">
      <tr>
        <th>Фамилия</th>
        <th>Имя</th>
        <th>Отчество</th>
        <th>Дата рождения</th>
      </tr>
      <?php
				$mysqli = new mysqli($_ENV["DB_URL"], $_ENV["username"], $_ENV["password"], $_ENV["database"]);
				$result = $mysqli->query("SELECT Name, Surname, Patronym, DATE_FORMAT(BirthDate, \"%d.%m.%Y\") as BirthDate_rus  FROM customs");
	foreach ($result as $row) {
      		echo "
      			<tr>
        		<td>{$row['Surname']}</td>
        		<td>{$row['Name']}</td>
        		<td>{$row['Patronym']}</td>
        		<td>{$row['BirthDate_rus']}</td>
     			 </tr>
      		"; } ?>
    </table>
    <?php
			phpinfo();
		?>
  </body>
</html>