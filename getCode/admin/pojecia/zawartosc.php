<?php
	
		require_once "../../sql/connect.php"; //wymaganie pliku z danymi do połączenia z bazą danych

		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);  //utworzenie polączenia

		if($polaczenie->connect_errno!=0) //instrukcja warunkowa. Skrypt jest wykonywany tylko jeśli ustanowiono polączenie z bazą danych
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$sql = "SELECT * FROM pojecia";  //zapytanie sql do pobrania akapitu tekstu
			
			echo '<table id="admintab">';
			echo '<tr class="linijka">
				<td class="kolumna">ID</td>
				<td class="kolumna">pojecie</td>
				</tr>';
			if($rezultat=@$polaczenie->query($sql)){			//obsłużenie zapytania SQL
				$ile_wierszy = $rezultat->num_rows;				//policzenie ile wierszy zwróciło zapytanie
				
				for($i=1; $i <=$ile_wierszy; $i++){				//pętla która wykona się tyle ray ile jest wierszy
				$wiersz=$rezultat->fetch_assoc();				//stworzenie tablicy asocjacyjnej dla prostego pobrania danych z tabeli
				$id = $wiersz['id'];							//pobranie danych zapisanych w kolumnie id
				$tekst=$wiersz['tekst'];						//pobranie danych zapisanych w kolumnie tekst
				echo '<tr class="linijka">
				<td class="kolumna">'.$id.'</td>
				<td class="kolumna">'.$tekst.'</td>
				</tr>';						//wyświetlenie zmiennej na stronie ze znacznikami html
				}
				$rezultat->free_result();						//zwolnienie pamięci
				
			}
			echo '</table>';
			$polaczenie->close(); 								//zamkniecie polaczenia
			
			}
?>