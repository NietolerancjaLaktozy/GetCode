<?php
	
		require_once "../../sql/connect.php"; //wymaganie pliku z danymi do połączenia z bazą danych

		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);  //utworzenie polączenia

		if($polaczenie->connect_errno!=0) //instrukcja warunkowa. Skrypt jest wykonywany tylko jeśli ustanowiono polączenie z bazą danych
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$sql = "SELECT * FROM kod";  //zapytanie sql do pobrania akapitu tekstu
			
			echo '<table id="admintab">';
			echo '<tr class="linijka">
				<td class="kolumna">ID</td>
				<td class="kolumna">jezyk</td>
				<td class="kolumna">for</td>
				<td class="kolumna">while</td>
				<td class="kolumna">dowhile</td>
				<td class="kolumna">if</td>
				<td class="kolumna">ifelse</td>
				<td class="kolumna">elseif</td>
				<td class="kolumna">zmienne</td>
				<td class="kolumna">switch</td>
				<td class="kolumna">array</td>
				<td class="kolumna">funkcje</td>
				</tr>';
			if($rezultat=@$polaczenie->query($sql)){			//obsłużenie zapytania SQL
				$ile_wierszy = $rezultat->num_rows;				//policzenie ile wierszy zwróciło zapytanie
				
				for($i=1; $i <=$ile_wierszy; $i++){				//pętla która wykona się tyle ray ile jest wierszy
				$wiersz=$rezultat->fetch_assoc();				//stworzenie tablicy asocjacyjnej dla prostego pobrania danych z tabeli
				$id=$wiersz['id'];							//pobranie danych zapisanych w kolumnie id
				$jezyk=$wiersz['jezyk'];
				$for=$wiersz['for'];
				$while=$wiersz['while'];
				$dowhile=$wiersz['dowhile'];
				$if=$wiersz['if'];
				$ifelse=$wiersz['ifelse'];
				$elseif=$wiersz['elseif'];
				$zmienne=$wiersz['zmienne'];
				$switch=$wiersz['switch'];
				$array=$wiersz['array'];
				$funkcje=$wiersz['funkcje'];
				
				echo '<tr class="linijka">
				<td class="kolumna">'.$id.'</td>
				<td class="kolumna">'.$jezyk.'</td>
				<td class="kolumna">'.$id.'</td>
				<td class="kolumna">'.$jezyk.'</td>
				<td class="kolumna">'.$for.'</td>
				<td class="kolumna">'.$while.'</td>
				<td class="kolumna">'.$dowhile.'</td>
				<td class="kolumna">'.$if.'</td>
				<td class="kolumna">'.$ifelse.'</td>
				<td class="kolumna">'.$elseif.'</td>
				<td class="kolumna">'.$zmienne.'</td>
				<td class="kolumna">'.$switch.'</td>
				<td class="kolumna">'.$array.'</td>
				<td class="kolumna">'.$funkcje.'</td>
				</tr>';						//wyświetlenie zmiennej na stronie ze znacznikami html
				}
				$rezultat->free_result();						//zwolnienie pamięci
				
			}
			echo '</table>';
			$polaczenie->close(); 								//zamkniecie polaczenia
			
			}
?>