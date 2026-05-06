# Geepshow Weekend 2026

Statische briefingpagina voor het weekend (HTML + plaatjes). Geschikt om op **GitHub Pages** te zetten en de link met je vrienden te delen.

Deze map is al voorbereid als **git-repository** met branch **`main`** en een eerste commit (alle bestanden inclusief `images/`).

## Delen via GitHub Pages (aanbevolen: git push)

1. Maak op [github.com](https://github.com/new) een **nieuwe repository**.  
   **Belangrijk:** vink **geen** README, .gitignore of license aan (lege repo), anders krijg je merge-conflict bij de eerste push.

2. Kopieer de HTTPS-URL van de repo, bv. `https://github.com/jouw-naam/geepshow-weekend-2026.git`.

3. Open **PowerShell** in deze map (`geepshow-weekend-2026-site`) en voer uit:

```powershell
.\push-to-github.ps1 -RemoteUrl "https://github.com/JOUWUSER/JOUWREPO.git"
```

De eerste keer vraagt Windows/Git om in te loggen bij GitHub (browser of token).

4. Ga in de repo naar **Settings → Pages**.  
   **Source:** Deploy from a branch → **Branch `main`** → folder **`/ (root)`** → Save.

5. Je deelbare link wordt (na ± 1 minuut):

`https://JOUWUSER.github.io/JOUWREPO/`

Alle asset-paden zijn relatief (`images/...`), dus de site werkt direct vanaf de repo-root.

### Alternatief zonder command line

Upload handmatig alle bestanden uit deze map naar een **lege** repo via de GitHub-webinterface (**Add file → Upload files**), daarna stap 4 hierboven.

### Als `push` weigert (repo niet leeg)

Als je de repo mét README hebt aangemaakt: in PowerShell in deze map:

```powershell
git pull origin main --allow-unrelated-histories
git push -u origin main
```

## Lokaal bekijken

Open `index.html` in je browser, of start een simpele server in deze map (dan werken sommige browsers consistenter met lokale bestanden).

## Aanpassingen

- **Hints & vrijgave-momenten**: onderaan `index.html` in het scriptblok, array `HINTS` en eventueel `FORCE_REVEAL_ALL_HINTS`.
- **Hint-plaatjes**: vervang bestanden in `images/hint-01.jpg` … `hint-04.jpg` door je eigen beelden (zelfde bestandsnamen aanhouden, of pad + `HINTS` bijwerken).
