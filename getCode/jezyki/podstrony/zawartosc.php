<?php
	//zabezpieczenia
	$id=$_GET['id'];
	$identyfikatory = array(1,2,3,4,5,6,7,8); //tablica
	
	if(in_array($id,$identyfikatory)){        //zabezpieczenia sprawdzenie czy zmienna $_GET znajduje się w tablicy
		require_once "../../sql/connect.php";
		
		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name); //ustanowienie połączenia z bazą

		if($polaczenie->connect_errno!=0)        //sprawdzenie czy połączenie jest nawiązane
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$sql = "SELECT * FROM jezyki WHERE id = $id";    //zapytanie sql
			
			if($rezultat=@$polaczenie->query($sql)){      //wykonanie zapytania do bazy danych
				$wiersz=$rezultat->fetch_assoc();		//utworzenie tablicy asocjacyjnej
				$nazwa = $wiersz['nazwa'];				//pobranie danych z kolumny nazwa
				$logo = $wiersz['logo_jezyka'];			//pobranie danych z kolumny logo języka
				$opis = $wiersz['opis'];				//pobranie danych z kolumny opis
				$historia = $wiersz['historia'];		//pobranie danych z kolumny historia
				
				$rezultat->free_result();				//zwolnienie pamięci
			}
			
			$polaczenie->close();						//zamknięcie połączenia
		}
	}else{
		header('Location:../../blad/blad.php');      //przekierowanie na stronę błędu
	}
?>