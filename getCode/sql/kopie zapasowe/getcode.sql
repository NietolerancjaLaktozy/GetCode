-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Sty 2023, 12:18
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `getcode`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `akapity`
--

CREATE TABLE `akapity` (
  `id` int(11) NOT NULL,
  `tresc` text DEFAULT NULL,
  `kod` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `akapity`
--

INSERT INTO `akapity` (`id`, `tresc`, `kod`) VALUES
(1, '<h1>Pętla for</h1>\n			<div class=\"akapit\">\n			Pętla to blok kodu który umożliwia cykliczne wykonywanie zawartych w nim instrukcji zależnie od postawionych warunków.\n			Pętla for to pętla iteracyjna. Do kontroli jej działania służy zmienna - licznik. W kolejnych iteracjach licznik jest inkrementowany - zwiększany o jeden lub dekrementowany zmniejszany o jeden.\n			</div>', 'for'),
(2, '<h1>Pętla while</h1>\n			<div class=\"akapit\">\n			Pętla to blok kodu który umożliwia cykliczne wykonywanie zawartych w nim instrukcji zależnie od postawionych warunków. Pętla while to pętla warunkowa. Tego rodzaju pętla wykonuje kolejne iteracje zależnie od zdefiniowanego warunku.\n			</div>', 'while'),
(3, '<h1>Pętla do while</h1>\n			<div class=\"akapit\">\n			Pętla to blok kodu który umożliwia cykliczne wykonywanie zawartych w nim instrukcji zależnie od postawionych warunków. Pętla dowhile to modyfikacja pętli while. Różni się tym, że najpierw wykonuje ona zawarte w niej instrukcje a następnie sprawdza warunek.\n			</div>', 'dowhile'),
(4, '<h1>Instrukcja warunkowa if</h1>\n			<div class=\"akapit\">\n			Instrukcja warunkowa służy do rozgałęzienia programu. Wykonuje zestaw instrukcji jeśli warunek jest spełniony.\n			</div>', 'if'),
(5, '<h1>Instrukcja warunkowa if else</h1>\n			<div class=\"akapit\">\n			Instrukcja warunkowa służy do rozgałęzienia programu. Wykonuje zestaw instrukcji jeśli warunek jest spełniony. W przeciwnym wypadku wykona instrukcje zawarte pod else.\n			</div>', 'ifelse'),
(6, '<h1>Instrukcja warunkowa if else if</h1>\n			<div class=\"akapit\">\n			Instrukcja warunkowa służy do rozgałęzienia programu. Wykonuje zestaw instrukcji zależnie od spełnienia warunku. Pozwala na zadeklarowanie 2 warunków: if i else if oraz instrukcji które zostaną wykonane jeśli żaden z powyższych warunków nie zostanie spełniony pod else.\n			</div>', 'elseif'),
(7, '<h1>Zmienne</h1>\n			<div class=\"akapit\">\n			Konstrukcja programistyczna posiadająca nazwę, miejsce przechowywania w pamięci oraz wartość którą przechowuje. Zmienne służą do przechowywania danych oraz wyników operacji wykonywanych w programie. Wartośc zmiennej może być różnego typu np ciąg znaków, liczba, tablica, obiekt\n			</div>', 'zmienne'),
(8, '<h1>Instrukcja wyboru switch</h1>\n			<div class=\"akapit\">\n			Switch to instrukcja warunkowa. Jej działanie polega na porównaniu podanej zmiennej warunkowej z zaprogramowanymi przypadkami i na tej podstawie wykonanie odpowiedniego bloku kodu.\n			</div>', 'switch'),
(9, '<h1>Tablica</h1>\n			<div class=\"akapit\">\n			Tablica to zmienna - kontener przechowująca w sobie dane takiego samego typu. Poszczególne dane mają przypisane indeksy po których możemy uzyskać do nich dostęp. Tablice mogą być jedno wymiarowe lub wielowymiarowe.\n			</div>', 'array'),
(10, '<h1>Funkcja</h1>\n			<div class=\"akapit\">\n			Funkcja to fragment kodu który po napisanu może być wielokrotnie wywoływany w programie. Funkcja może przetwarzać zmienne podane jako argumenty oraz zwracać wartość a także posiadać swoje wewnętrzne zmienne tak zwane zmienne lokalne.\n			</div>', 'funkcje');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jezyki`
--

CREATE TABLE `jezyki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `logo_jezyka` varchar(255) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `historia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `jezyki`
--

INSERT INTO `jezyki` (`id`, `nazwa`, `logo_jezyka`, `opis`, `historia`) VALUES
(1, 'C', 'logo_c.png', 'Jezyk C jest imperatywnym jezykiem programowania ogólnego przeznaczenia. Został zaprojektowany przez Dennisa Ritchie w 1972 roku. Powstał jako rozwinięcie języka B. Rozwijał się i zdobywał popularność w latach 70 i 80 XX wieku. Należy do najstarszych i najszerzej używanych języków programowania. Powszechnie używany do pisania systemów wbudowanych, sterownikach urządzeń, systemach operacyjnych oraz oprogramowania dla nich a także aplikacji użytkowych. Przykładowo w języku C zostały napisane narzędzia systemowe dla Uniksa a następnie również cały kod systemu operacyjnego Unix.', 'Jezyk C powstał we wczesnych latach 70 XX wieku. Jego twórcą jest Dennisa Ritchiego. Jego początki są silnie powiązane z powstawaniem systemu operacyjnego unix zaimplementowanego w assemblerze na komputer pdp-7 przez Dennisa Ritchiego and Kena Thompsona.Następnie postanowili przeportować system na komputer pdp-11. Thompson potrzebował języka programowania do tworzenia narzędzi systemowych co ostatecznie doprowadziło do stworzenia języka B jednak był on bardzo wybrakowany i konieczne było znalezienie lepszego rozwiązanie. Ritchie zaczął usprawniać język B w 1971 roku w cely wykorzystania lepszego wykorzystania funkcji PDP-11. W ten sposób ritchie stworzył język który nazwał New B. Dalszy rozwój języka ukształtowany został przez potrzeby Thompsona który używał New B do pisania jądra systemu unix. W 1972 dodawano do języka kolejne właściwości. Ostatecznie nazwę języka zmieniono na C. W 1973 jądro unixa zostało reimplementowane w języku C. Preprocesor języka C został wprowadzony w 1973 roku. Jego podstawowa wersja zapewniała tylko zawierane plików i proste zastępowanie ciągów. Niedługo później  zostało rozszerzone. Unix był jednym z pierwszych jąder systemowych zaimplementowanych w języku innym niż assembly.'),
(2, 'C++', 'logo_cpp.png', 'C++ to język programowania wysokiego poziomu stworzony przez Bjarne\'a Stroustrupa jako rozszerzenie języka C. Obecnie c++ ma funkcje programowania obektowego, uogólnionego i funkcyjnego oraz niskopoziomową manipulację pamięcią. Zostal zaprojektowany z myślą o programowaniu systemowym i tworzeniu systemów wbudowanych. C++ jest również używany w wielu innych kontekstach na przyklad: oprogramowaniu użytkowym, grach komputerowych, serwerach - e-handlu, przeglądarkach internetowych i bazach danych oraz w aplikacjach w których konieczna jest duża wydajność np centrale telefoniczne i sondy kosmiczne.', 'Historia języka sięga 1979 roku kiedy Brajne Stroustrup rozpoczął prace nad poprzednikiem c++ nazywanym c z klasami. Zródłem motywacji Stroustrupa były jego doświadczenia podczas programowania do jego pracy doktorackiej. Odkrył wtedy, że simula ma funkcje bardzo przydatne przy tworzeniu dużych systemów ale język jest za wolny w użytkowaniu praktycznym kiedy bcpl był szybki ale zbyt nisko-poziomowy by nadawać się do dużych systemów. Kiedy Stroustrup zaczął pracować w AT&T Bell Labs miał problm z analizą jądra unixa z poszanowaniem obliczeń rozproszonych. Pamiętając o swoich doświadczniach z pracy doktorackiej rozpoczął prace nad poszerzeniem jezyka C o funkcje podobne do simuli. c został wybrany ponieważ był językiem ogólnego zastosowania oraz był szybki, przenosny i powszechnie używany.'),
(3, 'C#', 'logo_csh.png', 'C# jest wysoko poziomowym, wieloparadygmatowym językiem ogólnego przeznaczenia. C# obejmuje typowanie statyczne, twarde typowanie, \nZostał zaprojektowany przez Andersa Hejlsberga z Microsoftu w 2000 i został zatwierdzony jako międzynarodowy standard przez Ecma w 2002 i ISO/IEC w 2003. Microsoft wprowadził c# wraz z .NET Framework i Visual studio obydwa będące zamkniętym oprogramowaniem.Dopiero cztery lata później, W 2004 zaczęto projekt Mono będący wolnym i otwarym oprogramowaniem zapewniający wieloplatformowy kompilator i środowisko uruchomieniowe dla języka c#. Dziesięć lat później Microsoft wydał edytor kodu Visual studio code, kompilator roslyn oraz framework platformę .NET. Są to produkty darmowe, wieloplatformowe będące otwartym oprogramowaniem. Mono dołączyło do microsoftu ale nie zostąło włączone w .NET. Często nazywany jest imitacją Javy lub javą od microsoftu ze względu na duże podobieństwo tych dwóch języków.', 'Podczas tworzenia frameworka .NET biblioteki klasowe były orginalnie pisane używając systemu kompilatora kodu zarządzanego nazywanego Simple Managed C. W roku 1999 Anders Hejlberg zebrał zespół by zbudować nowy język wtedy nazywany \"Cool\", co oznaczało (\"C-like Object Oriented Language\" pl. podobny do C język zorientowany objektowo). Microsoft rozważał zostawienie nazwy Cool jako ostatecznej nazwy języka ale niezdecydowali się na to z powodu znaków handlowych. W tym czasie projekt .NET został publicznie ogłoszony na 2000 konferencji profesjonalnej, język został nazwany c# a biblioteki klasowe i asp.net zostały portowane do c#. Hejlsberga główny projektant języka c# i główny architekt Microsoftu stwierdził, że powodem powstania języka C# były wady w większości głównych języków programowania które wpływały na podstawy CLR w ten sposób pośrednio prowadząc do powstania C#. Twórcy javy nazwyali c# imitacją javy jednak od 2005 roku obydwa języki rozwijają się w różne kierunki. Od tamtegu momentu C# jest regularnie rozwijany a obecnie najnowsza wersja jest C# 11.0.'),
(4, 'Java', 'logo_java.png', 'Java to wysoko-poziomowy, oparty na klasach, objektowy język programowania ogólnego zastosowania. Jest językiem wieloplatformowym którego działanie ilustruje slogan \"WORE\" Write once, run everywhere - napisz raz, uruchamiaj wszędzie. Oznacza to, że kod javy może być uruchomiony na wszystkich platformach wspierających javę bez potrzeby przekompilowania go. Aplikacje javy są skompilowane do kodu bajtowego który może działać na każdej maszynie wirtualnej javy niezależnie od architektury komputera. Składnia javy jest podobna do C i C++. Od 2019 jest jednym z najpopularniejszych języków programowania.', 'James Gosling, Mike Sheridan i Patrick Naughton rozpoczeli projekt język java w 1991 roku. Początkowo Java była zaprojektowana dla interaktywnej telewizji ale była zbyt zaawansowana dla branży cyfrowej telewizji kablowej w tamtych czasach. Początkowo język był nazywany Oak(pl. Dąb). Później nazwę projektu zmieniono na green a ostatecznie na Java od typu kawy java z indonezji. Gosling zaprojektował Javę ze skladnią podobną do C i C++ by była bardziej znajoma dla programistów. Pierwsza implementacja Javy została wypuszczona przez Sun Microsystems w 1996 roku. Zapewniała funkcjonalność WORA oraz Duży poziom bezpieczeństwa wraz z konfigurowalną ochroną. Pozwalała również na ograniczanie dostępu do plików i sieci. Wiekszość przeglądarek internetowych zaabsorbowały  możliwość uruchamiania apletów javy wewnątrz stron internetowych i java szybko sie rozpowszechniła.'),
(5, 'PHP', 'logo_php.png', 'PHP jest językiem skryptowym ogólnego przeznaczenia nastawiony na użycie przy tworzeniu stron internetowych. Został stworzony przez duńsko-kanadyjskiego programistę rasmusa lerdorfa w 1993 a opublikowany w 1995. PHP orginalnie oznaczało Personal Home Page ale obecnie oznacza PHP: Hypertext preprocessor. Kod php jest zwykle przetwarzany na serwerze internetowym przez interpreter php a na serwerze rezultat interpretowanego i wykonanego kodu php, który moze być dowolnym typem danych np wygenerowany html, będzie stanowił odpowiedź http. Php może też być używane do zadań programistycznych poza kontekstem webowym np samodzielne aplikacje graficzne kontrola dronów kod php moze również być wykonywany z wiersza poleceń\nstandardowy interpreter php zend engine jest darmowym oprogramowaniem realizowanym na licencji php. Język moze obsługiwać wiele systemów operacyjnych i platform.', 'Tworzenie PHP rozpoczęło się w 1993 roku kiedy Rasmus Lerdorf napisał kilka CGI(Common Gateway Interface znormalizowany interfejs) w języku C których użył do utrzymania swojej strony domowej. Rozszerzył je do działania z formularzami webowymi i by komunikowały się z bazami danych i nazwał tą implementację \"Personal Home Page/Forms Interpreter\" PHP/FI. PHP/fi mogło być używane do budowy prostych dynamicznych aplikacji webowych. By wspomóc reportowanie bugów i polepszyć kod, Lendorf zapowiedział wypuszczenie PHP/fi jako \"Personal home page tools\" \nTo wydanie miało podstawowe funkcjonalności które PHP ma dzisiaj wliczając w to zmienne podobne do pearl\nskładnia jest podobna do Perl ale jest prostsza ale bardziej ograniczona i mniej zwarta.\nWczesny php nie był stworzony celem bycia nowym językiem programowania. Lerdorf przyznawał, że nie wie jak pisze się język programowania. Ostatecznie jednak zaczęła tworzyć się grupa developerów która po miesiącach prac i testów oficjalnie wydała PHP/fi 2 w 1997 roku. W tym samym roku Zeev Suraski i Andi Gutsmans przepisali parser i stworzyli podstawę PHP 3 zmieniając nazwę języka na PHP: Hypertext Preprocessor po tym zaczęły się publiczne testy PHP 3 a oficjalnie wystartowało w 1998. Następnie Suraki i Gutsmans ponownie zaczęli przepisywać kod PHP tworząc Zed Engine w 1999. W 2000 wydano PHP 4 na silniku Zend Engine 1.0.\nPóźniej wydawano kolejne wersje PHP a obecnie najnowszą wersją jest 8.2 wydana w grudniu 2022 roku.'),
(6, 'Javascript', 'logo_javascript.png', 'Javascript to jedna z podstawowych technologii WWW obok html i css. Jest to wysoko poziomowy język programowania posiada dynamiczne typowanie, programowanie prototypowe i objektowe i funkcje pierwszej klasy. Jest wieloparadygmatowy, wspiera programowanie sterowane zdarzeniami, funkcyjne oraz imperatywne. Posiada API do pracy z tekstem, datami, Wyrażeniami regularnymi regularnymi, strukturami danych i objektowym modelem dokumentu. Javascript jest zwykle kompilowany metodą justi-in-time czyli bezpośrednio przed wykonaniem danego fragmentu kodu.', 'Początki javascript są związane z Netscape navigator - jedną z pierwszych popularnych przeglądarek internetowych. Początkowo strony internetowe mogłby być tylko statyczne i po załadowaniu jej do przeglądarki nie było możliwości na żadne dynamiczne działania. To spowodowało potrzebę na obejście tego ograniczenia. W 1995 roku Netscape zdecydował by dodać do przeglądarki navigator język skryptowy. Osiągneli to na dwa sposoby, kolaborując z Sun Microsystems by osadzić język java oraz zatrudniając Brendana Eicha by osadzić język Scheme. Zarząd Netscape\'u zadecydował, że najlepszą opcją było by Eich wymyślił nowy język ze składnią podobną do javy a mniej do Scheme i tym podobnych języków skryptowych. Nowy język zostął nazwany LiveScript przy pierwszej implementacji ale ostatecznie nazwę zmieniono na JavaScript na oficjalne wydanie w grudniu 1995. Wybór nazwy JavaScript wywołał zamieszanie sugerując bezpośrednie powiązanie z javą. W tym czasie Java była nowym językiem a nazwa Javascript była przez Eicha uważana za taktykę marketingową.'),
(7, 'Python', 'logo_python.png', 'Python jest wysokopoziomowym językiem programowania ogólnego przeznaczenia. Jego główna ideą jest czytelność i klarowność kodu a składnia jest zwięzła i przejrzysta. Posiada dynamiczne typowanie i zarządzanie pamięcią. Wspiera wiele paradygmatów programowania wliczając strukturalność, objektowość i funkcyjność. Python jest też wieloplatformowy, interpretery dostępne są na wiele systemów operacyjnych. Python rozwijany na licencji Open Source zarządzany przez Python Software Fundation.', 'Python zostal stworzony pod koniec lat 80 XX wieku. Jego implementacja rozpoczęła się w grudniu 1989 roku przez Guido Van Rossuma jako spadkobierca języka ABC. Van Rossum jest głównym autorem języka a główną rolę w decydowaniu o kierunku rozwoju utrzymywał do 2018 roku. Nazwa języka pochodzi od nazwy programu w BBC TV \"latający cyrk Monty Pythona\". W 1991 roku Van Rossum opublikował kod do alt.sources. W tym pierwszym wydaniu był system modułowy porzyczony z Modula-3. Van Rossum określił ten moduł jako podstawowa jednostka programistyczna pythona. Wersja pythona 1.0 wyszła w 1994 roku nowymi funkcjami były nowe narzędzia programistyczne. Póżniej van Rossum tworzył kolejne wersje.'),
(8, 'R', 'logo_r.png', 'R jest językiem programowania przeznaczonym do obliczeń statystystycznych oraz wizualizacji ich wyników. Wykorzystują go głównie eksploratorzy danych, bioinformatycy i statystycy. Został stworzony przez Rossa Ihaka i Roberta Gentlemana w 1993 roku. Środowisko R jest darmowym oprogramowaniem open-source na licencji GNU GPL. Nazwa języka nawiązuje do pierwszej litery imion twórców oraz od języka S którego jest spadkobiercą. R jest inspirowany językiem S do tego stopnia, że większosc programów w S mogą zostać uruchomione w R bez wiekszych zmian.', 'Początki języka R sięgają 1993 roku. Ross Ihaka i Robert Gentleman stworzyli go jako język programowania do nauki statystyki wprowadzającej na Uniwersytecie w Auckland. Początkowo opublikowali pliki binarne R w archiwum danych StatLib. W 1995 Martin Machler przekonał Ihaka i Gentlemana by zmienili R w darmowe oprogramowanie pod licencją GNU GPL. Pierwsze oficjalne wydanie R miało miejsce w 2000 roku. W 1997 utworzono CRAN (Comprehesive R archive Network) centralne repozytorium do hostowania kodu źródłowego R. W 1997 powstała podstawowy zespół R do dalszego rozwijania języka. w 2003 roku fundacja r zostala zalozona jako non profit by zapewnic dalsze wsparcie dla r.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kod`
--

CREATE TABLE `kod` (
  `id` int(11) NOT NULL,
  `jezyk` int(11) DEFAULT NULL,
  `for` text DEFAULT NULL,
  `while` text DEFAULT NULL,
  `dowhile` text DEFAULT NULL,
  `if` text DEFAULT NULL,
  `ifelse` text DEFAULT NULL,
  `elseif` text DEFAULT NULL,
  `zmienne` text DEFAULT NULL,
  `switch` text DEFAULT NULL,
  `array` text DEFAULT NULL,
  `funkcje` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kod`
--

INSERT INTO `kod` (`id`, `jezyk`, `for`, `while`, `dowhile`, `if`, `ifelse`, `elseif`, `zmienne`, `switch`, `array`, `funkcje`) VALUES
(1, 1, 'for(i = 1; i <= 10; i++){<br>\n				printf(\"%d \\n\", i);<br>\n				}', 'int i = 1; <br> while (i <= 10) {<br>   printf(\"%d\\n\", i);<br>   i++;<br>}', 'int i = 1;<br> do {<br>   printf(\"%d\\n\", i);<br>   i++;<br> }<br> while (i <= 10);', 'int x = 1;<br>if (x==1) {<br>  printf(\"x rowne jeden\"); <br>}', 'int x = 1;<br>if (x==1) {<br>  printf(\"x rowne jeden\");<br>}else {<br>  printf(\"x nie rowne jeden\");<br>}', 'int x = 2;<br>if (x==1) {<br>  printf(\"x rowne jeden\");<br>}else if (x==2){<br>  printf(\"x rowne dwa\");<br>}else {<br>  printf(\"x nie rowne jeden ani dwa\");<br>}', 'typ nazwaZmiennej<br> typ nazwaZmiennej = wartosc<br>np:int wiek = 20', 'int x=3<br>  switch(x)<br> {<br>   case 1:<br>     &nbsp&nbspprintf(\"x rowne jeden\");<br>     &nbsp&nbspbreak;<br>   case 2:<br>     &nbsp&nbspprintf(\"x rowne dwa\");<br>     &nbsp&nbspbreak;<br>   case 3:<br>     &nbsp&nbspprintf(\"x rowne trzy\");<br>     &nbsp&nbspbreak;<br>   default:<br>     &nbsp&nbspprintf(\"nieobslugiwany przypadek\");<br>     break;<br> }', 'int liczby[] = {1, 2, 3, 4};<br>printf(\"%d\", liczby[0]);', 'void powitanie() { <br>printf(\"witaj\");<br> }<br> wywołanie funkcji w  kodzie:<br>powitanie();'),
(2, 2, 'for (int i = 0; i <= 10; i++) {<br>\n  cout << i << \"\\n\";<br>\n}', 'int i = 1;<br> while (i <= 10) {<br>cout << i << \"\\n\";<br>   i++; <br>}', 'int i = 1;<br> do {<br>   cout << i << \"\\n\";<br>   i++;<br> }<br> while (i <= 10);', 'int x = 1;<br>if (x==1) {<br>  cout << \"x rowne jeden\"; <br>}', 'int x = 1;<br>if (x==1) {<br>  cout << \"x rowne jeden\"; <br>}else {<br>  cout << \"x nie rowne jeden\";<br>}', 'int x = 2;<br>if (x==1) {<br>  cout << \"x rowne jeden\"; <br>}else if (x==2) {<br>  cout << \"x rowne dwa\";<br>}else {<br>  cout << \"x nie rowne jeden ani dwa\";<br>}', 'typ nazwaZmiennej<br> typ nazwaZmiennej = wartosc<br>np:int wiek = 20', 'int x=3<br>  switch(x)<br> {<br>   case 1:<br>     &nbsp&nbspcout << \"x rowne jeden\";<br>  &nbsp&nbspbreak;<br>   case 2:<br>   &nbsp&nbspcout << \"x rowne dwa\";<br>  &nbsp&nbspbreak;<br>   case 3:<br>  &nbsp&nbspcout << \"x rowne trzy\";<br>     &nbsp&nbspbreak;<br>   default:<br>     &nbsp&nbspcout << \"nieobslugiwany przypadek\";<br> }', 'int liczby[4] = {1, 2, 3, 4};<br>cout << liczby[0];', 'void powitanie() { <br>cout <<\"witaj\";<br> }<br> wywołanie funkcji w  kodzie:<br>powitanie();'),
(3, 3, 'for (int i = 1; i <= 10; i++) {<br>\r\n				Console.WriteLine(i);<br>\r\n				}', 'int i = 1;<br> while (i <= 10)  {<br>Console.WriteLine(i);<br>   i++; <br>}', 'int i = 1;<br> do <br> {<br>   Console.WriteLine(i);<br>   i++;<br> }<br> while (i <= 10);', 'int x = 1;<br>if (x==1) {<br>  Console.WriteLine(\"x rowne jeden\"); <br>}', 'int x = 1;<br>if (x==1) {<br>  Console.WriteLine(\"x rowne jeden\"); <br>}else {<br>  Console.WriteLine(\"x nie rowne jeden\");<br>}', 'int x = 2;<br>if (x==1) {<br>  Console.WriteLine(\"x rowne jeden\"); <br>}else if (x==2) {<br>  Console.WriteLine(\"x rowne dwa\");<br>}else {<br>  Console.WriteLine(\"x nie rowne jeden ani dwa\");<br>}', 'typ nazwaZmiennej<br> typ nazwaZmiennej = wartosc<br>np:int wiek = 20', 'int x=3<br>  switch(x)<br> {<br>   case 1:<br>&nbsp&nbspConsole.WriteLine(\"x rowne jeden\");<br>     &nbsp&nbspbreak;<br>   case 2:<br>  &nbsp&nbspConsole.WriteLine(\"x rowne dwa\");<br>     &nbsp&nbspbreak;<br>   case 3:<br>&nbsp&nbspConsole.WriteLine(\"x rowne trzy\");<br>     &nbsp&nbspbreak;<br>   default:<br>&nbsp&nbspConsole.WriteLine(\"nieobslugiwany przypadek\");<br> }', 'int[] liczby = {1, 2, 3, 4};<br>Console.WriteLine(liczby[0]);', 'static void powitanie() { <br>Console.WriteLine(\"witaj\");<br> }<br> wywołanie funkcji w  kodzie:<br>powitanie();'),
(4, 4, 'for (int i = 1; i <= 10; i++) {<br>\r\n			System.out.println(i);<br>\r\n			}', 'int i = 1;<br> while (i <= 10) {<br>System.out.println(i);<br> i++;<br> }', 'int i = 1;<br> do {<br>   System.out.println(i);<br>   i++;<br> }<br> while (i <= 10);', 'int x = 1;<br>if (x==1) {<br>  System.out.println(\"x rowne jeden\"); <br>}', 'int x = 1;<br>if (x==1) {<br>  System.out.println(\"x rowne jeden\"); <br>}else {<br>  System.out.println(\"x nie rowne jeden\");<br>}', 'int x = 2;<br>if (x==1) {<br>  System.out.println(\"x rowne jeden\"); <br>}else if (x==2) {<br>  System.out.println(\"x rowne dwa\");<br>}else {<br>  System.out.println(\"x nie rowne jeden ani dwa\");<br>}', 'typ nazwaZmiennej<br> typ nazwaZmiennej = wartosc<br>np:int wiek = 20', 'int x=3<br>  switch(x)<br> {<br>   case 1:<br>     &nbsp&nbspSystem.out.println(\"x rowne jeden\");<br>     &nbsp&nbspbreak;<br>   case 2:<br>&nbsp&nbspSystem.out.println(\"x rowne dwa\");<br>&nbsp&nbspbreak;<br>   case 3:<br>&nbsp&nbspSystem.out.println(\"x rowne trzy\");<br>&nbsp&nbspbreak;<br>   default:<br>&nbsp&nbspSystem.out.println(\"nieobslugiwany przypadek\");<br> }', 'int[] liczby = {1, 2, 3, 4};<br>System.out.println(liczby[0]);', 'static void powitanie() { <br>System.out.println(\"witaj\");<br> }<br> wywołanie funkcji w  kodzie:<br>powitanie();'),
(5, 5, 'for ($i = 1; $i <= 10; $i++) {<br>\r\n			echo $i;<br>\r\n			}', '$x = 1;<br> while($x <= 10) {<br>echo \"The number is: $x\";<br>   $x++; <br>}', '$x = 1;<br> do {<br>   echo \"The number is: $x <br>\";<br>   $x++;<br> }<br> while ($x <= 10);', '$x = 1;<br>if (x==1) {<br>  echo \'x rowne jeden\'; <br>}', '$x = 1;<br>if (x==1) {<br>  echo \'x rowne jeden\'; <br>}else {<br>  echo \'x nie rowne jeden\';<br>}', '$x = 2;<br>if (x==1) {<br>  echo \'x rowne jeden\'; <br>}else if (x==2) {<br>  echo \'x rowne dwa\';<br>}else {<br>  echo \'x nie rowne jeden ani dwa\';<br>}', '$nazwaZmiennej = wartosc<br>np: $wiek = 20', '$x=3<br>  switch(x)<br> {<br>   case 1:<br>&nbsp&nbspecho \'x rowne jeden\';<br>     &nbsp&nbspbreak;<br>   case 2:<br>&nbsp&nbspecho \'x rowne dwa\';<br>&nbsp&nbspbreak;<br>   case 3:<br>&nbsp&nbspecho \'x rowne trzy\';<br>&nbsp&nbspbreak;<br>   default:<br>&nbsp&nbspecho \'nieobslugiwany przypadek\';<br>', '$liczby = array(1,2,3,4);<br>echo $liczby[0];', 'function powitanie() {<br>echo \"witaj\";<br> }<br> wywołanie funkcji w  kodzie:<br>powitanie();'),
(6, 6, 'for (let i = 1; i <=10; i++) {<br>\n			document.write(i);<br>\n			}', 'let i = 1;<br>while<br> (i <= 10) {<br>  document.write(i);<br>   i++; <br>}', 'let i =1;<br> do {<br>   document.write(i);<br>   i++;<br> }<br> while (i <= 10);', 'let x =1;<br>if (x==1) {<br>  document.write(\"x rowne jeden\"); <br>}', 'let x =1;<br>if (x==1) {<br>  document.write(\"x rowne jeden\"); <br>}else {<br>  document.write(\"x nie rowne jeden\");<br>}', 'let x =2;<br>if (x==1) {<br>  document.write(\"x rowne jeden\"); <br>}else if (x==1) {<br>  document.write(\"x rowne dwa\");<br>}else {<br>  document.write(\"x nie rowne jeden ani dwa\");<br>}', 'let nazwaZmiennej = wartosc<br>np: let wiek = 20', 'let x=3<br>  switch(x)<br> {<br>   case 1:<br>&nbsp&nbspdocument.write(\"x rowne jeden\");<br>&nbsp&nbspbreak;<br>   case 2:<br>&nbsp&nbspdocument.write(\"x rowne dwa\");<br>&nbsp&nbspbreak;<br>   case 3:<br>&nbsp&nbspdocument.write(\"x rowne trzy\");<br>&nbsp&nbspbreak;<br>   default:<br>&nbsp&nbspdocument.write(\"nieobslugiwany przypadek\");<br> }', 'const liczby =[1,2,3,4]; <br>document.write(liczby);', 'function powitanie() {<br>document.write(\"witaj\");<br>}<br> wywołanie funkcji w  kodzie:<br>powitanie();'),
(7, 7, 'for x in range(1, 11):<br>\n&nbsp&nbspprint(x)', 'i = 1<br> while i <= 10:<br>\n&nbsp&nbspprint(i)<br>   i += 1', 'nie występuje.\nIstnieje możliwość emulacji takiej pętli', 'x=1<br>if x==1:<br>&nbsp&nbsp print(\'x rowne jeden\')', 'x =1<br>if x==1:<br>&nbsp&nbsp print(\'x rowne jeden\')<br>else:<br>&nbsp&nbsp print(\'x nie rowne jeden\')', 'x =2<br>if x==1:<br>&nbsp&nbsp print(\'x rowne jeden\')<br>elif x==2:<br>&nbsp&nbsp print(\'x rowne dwa\')<br>else:<br>&nbsp&nbsp print(\'x nie rowne jeden ani dwa\')', 'nazwaZmiennej = wartosc<br>np: wiek = 20', 'Nie występuje. Możliwe jest zastąpienie switch na kilka sposobów np tak:<br>x =  3 <br>match x:case 1:<br>&nbsp&nbsp \nprint(\"x rowne 1\")<br>case 2:<br>&nbsp&nbsp print(\"x rowne 2\")<br>case 3:<br>&nbsp&nbsp print(\"x rowne 3\")<br>case _:<br>&nbsp&nbsp print(\"nieobslugiwany przypadek\")', 'liczby =[1,2,3,4] <br>for x in liczby:<br>&nbsp&nbspprint(x)', 'def powitanie():<br>&nbsp&nbspprint(\"witaj\")<br> wywołanie funkcji w  kodzie:<br>powitanie()'),
(8, 8, 'for (x in 1:10) {<br>\n&nbsp&nbspprint(x)<br>\n}<br>', 'i <- 1<br>\nwhile (i <= 10) {<br>\n&nbsp&nbspprint(i)<br>\n  i <- i + 1<br>\n}', 'nie wystepuje', 'x <- 1<br>\nif (x == 1) {<br>\n&nbsp&nbspprint(\"x rowne jeden\")<br>\n}', 'x <- 1<br>\nif (x == 1) {<br>\n&nbsp&nbspprint(\"x rowne jeden\")<br>\n}else {<br>\n&nbsp&nbspprint(\"x nie rowne jeden\")<br>\n}', 'x <- 2<br>\nif (x == 1) {<br>\n&nbsp&nbspprint(\"x rowne jeden\")<br>\n}else if (x == 2) {<br>\n&nbsp&nbspprint(\"x rowne 2\")<br>\n}else {<br>\n&nbsp&nbspprint(\"x nie rowne ani jeden ani dwa\")<br>\n}', 'nazwaZmiennej <- wartosc<br>\nwiek <- 20', 'x <- \"3\"<br>\nv <- switch(x, \"x rowne jeden\", \"x rowne dwa\", \"x rowne trzy\")<br>\nv', 'thisarray <- c(1:4)<br> thisarray', 'powitanie <- function() {<br>&nbsp&nbspprint(\"witaj\")<br> }<br> wywołanie funkcji w  kodzie:<br>powitanie()');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojecia`
--

CREATE TABLE `pojecia` (
  `id` int(11) NOT NULL,
  `tekst` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pojecia`
--

INSERT INTO `pojecia` (`id`, `tekst`) VALUES
(1, 'Poziom jezyka - poziom języka określa zrozumiałość składni dla człowieka i komputera. Wysoki poziom języka oznacza , że skladnia i słowa kluczowe są przystępne dla człowieka jednocześnie będąc kompletnie niezrozumialymi dla procesora. Taki kod należy skompilować by możliwe było wykonanie go. Język niskiego poziomu jest bardziej zbliżony do kodu maszynowego który procesor potrafi przetwarzać.'),
(2, 'Typowanie - nadawanie zmiennym typu, może byc statyczne i dynamiczne. Statyczne odbywa się podczas kompilacji programu zaś dynamiczne w trakcie jego działania. Typowanie dzielimy również na silne i słabe. Silne typowanie oznacza, że wyrażenie posiada określony typ danych na których operuje. Typowanie słabe oznacza, że typ danych może być zmieniony w trakcie trwania programu np zmienna może przyjąć wartość liczbową a następnie zmienić typ na ciąg znaków.'),
(3, 'Paradygmaty programowania - sposób klasyfikowania języków programowania ze względu na ich cechy.'),
(4, 'Programowanie objektowe - jeden z paradygmatów programowania według którego programy oparte są o obiekty przechowujące dane i kod. Dane przechowywane są w formie pól zaś kod w formie metod. Zwykle metod służą do modyfikowanie pól obiektu.'),
(5, 'Klasa - w programowaniu objektowym klasa to wzór do tworzenia objektów posiadający swoje zmienne - pola oraz metody. Obiekt danej klasy nazywamy instancją tej klasy.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `akapity`
--
ALTER TABLE `akapity`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `jezyki`
--
ALTER TABLE `jezyki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kod`
--
ALTER TABLE `kod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jezyk` (`jezyk`);

--
-- Indeksy dla tabeli `pojecia`
--
ALTER TABLE `pojecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `akapity`
--
ALTER TABLE `akapity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `jezyki`
--
ALTER TABLE `jezyki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `kod`
--
ALTER TABLE `kod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `pojecia`
--
ALTER TABLE `pojecia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `kod`
--
ALTER TABLE `kod`
  ADD CONSTRAINT `kod_ibfk_1` FOREIGN KEY (`jezyk`) REFERENCES `jezyki` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
