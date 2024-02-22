<?php
	
		require_once "../../sql/connect.php"; 										//wymaganie pliku z danymi do połączenia z bazą danych

		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);  		//utworzenie polączenia

		if($polaczenie->connect_errno!=0) 											//instrukcja warunkowa. Skrypt jest wykonywany tylko jeśli ustanowiono polączenie z bazą danych
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$jezyk = $_POST['jezyk'];                                              //pobranie zmiennych z $_POST
			$for = $_POST['for'];
			$while = $_POST['while'];
			$dowhile = $_POST['dowhile'];
			$if = $_POST['if'];
			$ifelse = $_POST['ifelse'];
			$elseif = $_POST['elseif'];
			$zminne = $_POST['zmienne'];
			$switch = $_POST['switch'];
			$array = $_POST['array'];
			$funkcje = $_POST['funkcje'];
			
			
			$sql = "INSERT INTO `kod`(`jezyk`, `for`, `while`, `dowhile`, `if`, `ifelse`, `elseif`, `zmienne`, `switch`, `array`, `funkcje`) VALUES('$jezyk','$for','$while','$dowhile','$if','$ifelse','$elseif','$zmienne','$switch','$array','$funkcje')"; 				
			
			if($rezultat=@$polaczenie->query($sql)){								//obsłużenie zapytania SQL
				
			}
			header('Location:admin_kod_tabela.php');
			$polaczenie->close(); 													//zamkniecie polaczenia
			
			}
?>