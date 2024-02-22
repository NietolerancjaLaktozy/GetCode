<?php
	
		require_once "../sql/connect.php"; //wymaganie pliku z danymi do połączenia z bazą danych

		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);  //utworzenie polączenia

		if($polaczenie->connect_errno!=0) //instrukcja warunkowa. Skrypt jest wykonywany tylko jeśli ustanowiono polączenie z bazą danych
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$sql = "SELECT tekst FROM pojecia";  //zapytanie sql do pobrania akapitu tekstu
			
			if($rezultat=@$polaczenie->query($sql)){			//obsłużenie zapytania SQL
				$ile_wierszy = $rezultat->num_rows;				//policzenie ile wierszy zwróciło zapytanie
				
				for($i=1; $i <=$ile_wierszy; $i++){				//pętla która wykona się tyle ray ile jest wierszy
				$wiersz=$rezultat->fetch_assoc();				//stworzenie tablicy asocjacyjnej dla prostego pobrania danych z tabeli
				$tekst=$wiersz['tekst'];						//pobranie danych zapisanych w kolumnie tekst
				echo '<p class="pojecie">'.$tekst.'</p>';		//wyświetlenie zmiennej na stronie ze znacznikami html
				}
				$rezultat->free_result();						//zwolnienie pamięci
			}
			
			$polaczenie->close(); 								//zamkniecie polaczenia
			
			}
?>