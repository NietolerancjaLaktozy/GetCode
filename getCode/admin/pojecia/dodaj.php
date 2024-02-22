<?php
	
		require_once "../../sql/connect.php"; //wymaganie pliku z danymi do połączenia z bazą danych

		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);  //utworzenie polączenia

		if($polaczenie->connect_errno!=0) //instrukcja warunkowa. Skrypt jest wykonywany tylko jeśli ustanowiono polączenie z bazą danych
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$pojecie = $_POST['pojecie'];
			
			$sql = "INSERT INTO pojecia(tekst) VALUES('$pojecie')";  //zapytanie sql do pobrania akapitu tekstu
			
			if($rezultat=@$polaczenie->query($sql)){			//obsłużenie zapytania SQL
				
			}
			header('Location:admin_pojecia_tabela.php');
			$polaczenie->close(); 								//zamkniecie polaczenia
			
			}
?>