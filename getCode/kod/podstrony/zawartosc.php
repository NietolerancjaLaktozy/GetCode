<?php
	//zabezpieczenia
	$kol=$_GET['kol'];  //zmienna z nazwą kolumny w tabeli którą wybrano
	$strony = array("for", "while", "dowhile", "if", "ifelse", "elseif", "zmienne", "switch", "array", "funkcje"); //tablica do porównania wartosci
	
	if(in_array($kol,$strony)){  //sprawdzenie czy zmienna przesłana prze url znajduje się w tablicy. Zabezpieczen do zapytań bazy danych. Skrypt zostanie wykonany tylko jeśli zmienna $kol znajduje się w tablicy
	
		require_once "../../sql/connect.php"; //wymaganie pliku z danymi do połączenia z bazą danych

		$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);  //utworzenie polączenia

		if($polaczenie->connect_errno!=0) //instrukcja warunkowa. Skrypt jest wykonywany tylko jeśli ustanowiono polączenie z bazą danych
		{
			echo "Error: ".$polaczenie->connect_errno."opis bledu: ".$polaczenie->connect_errno; //komunikat o błędzie
		}else{
			
			$sql1 = "SELECT tresc, kod FROM akapity WHERE kod='$kol'";  //zapytanie sql do pobrania akapitu tekstu
			
			if($rezultat=@$polaczenie->query($sql1)){			//obsłużenie pierwszego zapytania SQL
				
				$wiersz=$rezultat->fetch_assoc();
				$tresc=$wiersz['tresc'];
				echo $tresc;
				
				$rezultat->free_result();
			}
			
			$sql2 = "SELECT kod.$kol,jezyki.nazwa FROM kod, jezyki WHERE kod.jezyk=jezyki.id";  //zapytanie sql do pobrania danych
			
			if($rezultat=@$polaczenie->query($sql2)){			//obsłużenie drugiego zapytania SQL
				
				$ile_wierszy = $rezultat->num_rows;				//policzenie ile wierszy zwróciło zapytanie
				
				for($i=1; $i <=$ile_wierszy; $i++){				//pętla która wyświetla na stronie dane dla każdego wiersza tabeli
				$wiersz=$rezultat->fetch_assoc();
				$nazwa=$wiersz['nazwa'];
				$dane = $wiersz[$kol];
				echo '
				<div class="kodnazwaj">'.$nazwa.'</div>
				<div class="kod">
					'.$dane.'
				</div>';
				}
				$rezultat->free_result();
			}
			
			$polaczenie->close(); //zamkniecie polaczenia
			
			}
	}else{
		header('Location:../../blad/blad.php');
	}
?>