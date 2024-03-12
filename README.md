# DyplomXpert
Obsługa pracy dyplomowej
# Temat projektu:
Aplikacja będzie umożliwiała obsługę prac dyplomowych na kierunku studiów 
teleinformatyka. System będzie obsługiwał 30 użytkowników - 10 prowadzących oraz 
20 studentów. Następnie, student przesyła pracę dyplomową. W odpowiedzi 
komentarz prowadzącego będzie mógł zawierać dwa opisy: “Zaakceptowana” lub 
“Odrzucona”. W pierwszym przypadku prowadzący będzie mógł przesłać recenzję 
pracy dyplomowej studenta zamieszczoną obok komentarza. Student będzie mógł 
zobaczyć dzień oraz godzinę odpowiedzi promotora. Dodatkowo system będzie 
wyświetlał dzień i godzinę, w których minie termin oddania pracy dyplomowej. Aby 
skorzystać z aplikacji użytkownicy będą musieli się zalogować - student poprzez 
podanie swojego indeksu i hasła, a prowadzący przez login zawierający jego imię i 
nazwisko oraz hasło.

# Wymagania funkcjonalne:
# Logowanie:
• Użytkownicy (studenci i promotorzy) będą mieli możliwość zalogowania się na 
stronę przy użyciu numeru indeksu oraz hasła.
# Katalog prac dyplomowych:
• Użytkownicy (promotorzy) będą mieli możliwość przeglądania oraz wyszukiwania 
prac dyplomowych studentów. 
# Obsługa systemu prac dyplomowych:
• Użytkownicy (studenci) będzie mógł zamieszczać do systemu swoją pracę 
dyplomową.
• System będzie monitorował termin końcowy oddania pracy dyplomowej.
# Recenzje:
• Użytkownicy (promotorzy) będą mieli możliwość wyboru odpowiedniego pola 
“Zaakceptowana” lub “Odrzucona” przy pracy dyplomowej studenta.
• Użytkownicy (promotorzy) będą mieli możliwość przesłania recenzji pracy 
dyplomowej, która będzie zamieszczona obok komentarza.
# Zarządzanie użytkownikami:
• Użytkownicy z rolą administratora uczelni będą mogli sprawdzić czy praca została 
oddana na czas.
# Administratorzy i uprawnienia:
• Użytkownicy z rolą administratora uczelni będą mogli zarządzać kontami studentów 
i promotorów oraz konfigurować aplikację.

#  Szczegółowy opis aplikacji 

Strona przeznaczona jest dla studentów i pracowników Wydziału Informatyki i 
Telekomunikacji oraz dla kierunku teleinformatyka. System działa w czasie lokalnym. 
Nasza aplikacja finalnie obsługuje 33 użytkowników (20 studentów, 10 promotorów oraz 3 
administratorów). Użytkownicy logują się do systemu za pomocą e-maila. Zależnie od roli 
użytkownika ma on inną domenę e-mail. Dla studentów jest to wzór 
numer_indeksu@student.pwr.edu.pl, dla promotorów numer_indeksu@pwr.edu.pl, natomiast 
dla administratorów numer@com.pl. Hasła w naszej aplikacji są zahaszowane. 
Wszyscy użytkownicy mają możliwość wyszukiwania zakładek poprzez wpisanie 
odpowiedniej nazwy zakładki w wyszukiwarce i kliknięciu przycisku lupki w prawym 
górnym rogu. 
Funkcjonalności dla każdego rodzaju użytkownika aplikacji:
# • Student
Aplikacja po zalogowaniu się przekierowuje użytkownika do strony głównej dla studentów. 
Ma on wtedy możliwość zobaczyć swój numer indeksu oraz czas, jaki pozostał mu do 
oddania pracy dyplomowej. Strona umożliwia podgląd aktualnej daty oraz godziny. 
Zakładki dostępne dla studentów to między innymi “Instrukcja” do przesyłania pracy 
dyplomowej, “Harmonogram”, w którym użytkownik może sprawdzić terminy związane z 
obroną prac dyplomowych, “Materiały” gdzie znajdują się przydatne pliki do pisania pracy 
dyplomowej, które można pobrać, “Pomoc”, w której znajdują się odpowiedzi na najczęstsze 
pytania i kontakt z uczelnią oraz zakładka “Prześlij pracę”, w której student może zobaczyć 
status przesłanego zadania, stan oceniania, ile dni przed terminem została przesłana praca 
dyplomowa, możliwość podglądu jaki plik został przesłany oraz możliwość pobrania go, 
komentarz oraz ocenę promotora, a także recenzję zamieszczoną przez prowadzącego i 
możliwość pobrania jej. Dodatkowo student widzi dzień oraz godzinę odpowiedzi promotora.
Student ma możliwość zamieszczenia pliku pdf tylko raz - jeśli będzie chciał przesłać kolejny 
plik system poinformuje go, że przesłał już swoją pracę dyplomową. 
# • Promotor
Aplikacja po zalogowaniu się promotora przekierowuje użytkownika do strony głównej dla 
promotora. Na tej stronie widnieje indeks zalogowanego użytkownika oraz czas, jaki pozostał 
do końca oddania pracy dyplomowej przez studenta.
Promotor ma możliwość przejrzenia zakładki “Studenci”, w której obserwuje przesłane prace 
swoich podopiecznych. Następnie może za pośrednictwem frazy “Zaakceptuj pracę 
dyplomową” przenieść się do strony, gdzie będzie mógł: zaakceptować lub odrzucić pracę, 
wystawić ocenę, dodać komentarz oraz zamieścić recenzję.
# • Administrator 
Po zalogowaniu się aplikacja powiadamia użytkownika, że został on zalogowany jako 
administrator strony. Sekcja “Zarządzanie użytkownikami” pozwala na dodawanie oraz 
usuwanie użytkowników. Administrator posiada też tabelę ze wszystkimi użytkownikami 
oraz niezbędne informacje o nich. 
Kolejnym uprawnieniem jest kontrola prac dyplomowych – administrator może sprawdzić 
czy praca dyplomowa każdego ze studentów została oddana na czas oraz sprawdzić też 
szczegółowe informacje o danej pracy. 
Ostatnią funkcjonalnością administratora jest konfiguracja aplikacji. Może on zmienić tryb 
strony na ciemny lub jasny dla wszystkich użytkowników aplikacji. 
