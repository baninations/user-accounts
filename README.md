## Benutzer accounts

Erstellen Sie einen sicheren Administrationsbereich zur Verwaltung von Benutzerkonten mit folgenden Anforderungen:

## Login Accounts

**Administrator**
- Benutzer: admin
- Passwort: adminpass

**User(Beschränkte)**
- Benutzer: user
- Passwort: userpass


### Benutzerverwaltung

- **Erstellen, Bearbeiten und Löschen:** Fähigkeit zum Anlegen, Bearbeiten und Löschen von Benutzerkonten.
- **Benutzerdaten:** Erfassen der folgenden Daten für jeden Benutzer:
  - Vorname
  - Nachname
  - Kundennummer
  - E-Mail
  - Telefon
  - Benutzername
  - Passwort

### Benutzeroberfläche

- **Tabellarische Anzeige:** Anzeige vorhandener Benutzerkonten in übersichtlicher Tabellenform.
- **Suchfunktion:** Implementierung einer Suchfunktion, um Benutzerkonten anhand des Benutzernamens, des Vor- und Nachnamens oder der Kundennummer zu finden.
- **Anordnung der Aktionen:** Anordnung der Aktionen (Anlegen, Bearbeiten, Löschen und Suche) in einer logischen und funktionalen Struktur.

### Zusätzliche Funktionen

- **CSV-Export:** Ermöglichen Sie den Export aller Benutzerdatensätze im CSV-Format.

### Benutzerrollen und Berechtigungen

- **Rollen:**
  - Administrator (voller Zugriff)
  - Benutzer (keine Berechtigung zum Anlegen, Bearbeiten oder Löschen von Datensätzen; kann Daten ohne Zugangsdaten exportieren)

### Authentifizierung und Sitzungsverwaltung

- **Anmeldung:** Ermöglichen Sie die Anmeldung im Administrationsbereich mit jedem gespeicherten Benutzerkonto.
- **Sitzungsspeicherung:** Speichern Anmeldedaten (Benutzername, Passwort, Rolle) in einer Sitzung.
- **Abmeldung:** Implementieren eine Abmeldungs-Funktion, um die aktuelle Sitzung zu beenden.

### Technische Spezifikationen

- **Backend:** MySQL / PHP 7.0 oder höher.
- **Keine Frameworks:** Verwenden Sie keine vorhandenen PHP-Frameworks.
- **Frontend:** Layout und Formatierung über CSS (keine Inline-Styles).


