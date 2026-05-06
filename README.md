# Geepshow Weekend 2026

Statische briefingpagina voor het weekend (HTML + plaatjes). Geschikt om op **GitHub Pages** te zetten en de link met je vrienden te delen.

## Delen via GitHub Pages

1. Maak een **nieuwe repository** op GitHub (kan privé blijven als je wilt).
2. Upload de **inhoud van deze map** naar de root van de repo (`index.html`, `images/`, deze `README.md`).
3. Ga naar **Settings → Pages**.
4. Bij **Build and deployment**: kies **Deploy from a branch**, branch **`main`** (of `master`), folder **`/ (root)`**.
5. Na een minuut krijg je een URL zoals `https://jouw-gebruikersnaam.github.io/repo-naam/`.

Alle asset-paden zijn relatief (`images/...`), dus de site werkt direct vanaf de repo-root.

## Lokaal bekijken

Open `index.html` in je browser, of start een simpele server in deze map (dan werken sommige browsers consistenter met lokale bestanden).

## Aanpassingen

- **Hints & vrijgave-momenten**: onderaan `index.html` in het scriptblok, array `HINTS` en eventueel `FORCE_REVEAL_ALL_HINTS`.
- **Hint-plaatjes**: vervang bestanden in `images/hint-01.jpg` … `hint-04.jpg` door je eigen beelden (zelfde bestandsnamen aanhouden, of pad + `HINTS` bijwerken).
