<?php
	
		require_once "../../sql/connect.php"; //wymaganie pliku z danymi do połączenia z bazą danych

		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);  //utworzenie polączenia

		if($polaczenie->connect_errno!=0) //instrukcja warunkowa. Skrypt jest wykonywany tylko jeśli ustanowiono polączenie z bazą danych
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$nazwa = $_POST['nazwa'];
			$logo = $_POST['logo'];
			$opis = $_POST['opis'];
			$historia = $_POST['historia'];
			
			$sql = "INSERT INTO jezyki(nazwa,logo_jezyka,opis,historia) VALUES('$nazwa','$logo','$opis','$historia')";  //zapytanie sql do pobrania akapitu tekstu
			
			if($rezultat=@$polaczenie->query($sql)){			//obsłużenie zapytania SQL
				
			}
			header('Location:admin_jezyk_tabela.php');
			$polaczenie->close(); 								//zamkniecie polaczenia
			
			}
?>