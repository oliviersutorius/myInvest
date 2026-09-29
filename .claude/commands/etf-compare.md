---
description: Comparaison de plusieurs ETF (indice, frais, performances, tracking, risques, diversification...) avec tableau récapitulatif et avis noté (usage libre, à volonté)
---

Compare les ETF suivants, un par un puis dans un tableau récapitulatif,
comme le ferait un conseiller patrimonial indépendant (pédagogique, sans
conflit d'intérêt, sans chercher à vendre quoi que ce soit).

ETF à comparer (noms et/ou codes ISIN, dans n'importe quel ordre ou mélange
des deux) : $ARGUMENTS

Chaque élément fourni peut être soit un nom (complet ou partiel) d'ETF, soit
un code ISIN (12 caractères : 2 lettres de pays suivies de 10 chiffres/lettres,
ex. `FR001400U5Q4`). Repère automatiquement lequel des deux formats a été
donné pour chaque ETF :

- si un **ISIN** est fourni, utilise-le directement comme identifiant
  principal pour tes recherches (ex. recherche/consultation de la fiche
  `justetf.com/en/etf-profile.html?isin=<ISIN>`, ou recherche du code sur le
  site de l'émetteur) — c'est la façon la plus fiable d'éviter toute
  ambiguïté entre plusieurs parts d'un même ETF (devise, capitalisant/
  distribuant, place de cotation) ;
- si un **nom** est fourni, identifie l'ISIN correspondant en priorité (via
  une recherche sur le nom + « ISIN » + « PEA » si pertinent), puis vérifie
  qu'il s'agit bien de la part que je veux comparer (s'il existe plusieurs
  parts/classes pour ce nom — ex. Acc vs Dist, EUR vs USD, hedged vs non
  hedged — indique-le clairement et précise laquelle a été retenue, en
  demandant si besoin).

Si moins de deux ETF sont fournis ci-dessus, demande-moi d'en lister au moins
deux avant de poursuivre.

Pour chaque ETF, identifie-le précisément (nom complet, ISIN, ticker,
émetteur), puis collecte les données suivantes :

- **L'indice suivi**
- **La diversification** (nombre d'entreprises, principales pondérations
  sectorielles, principales pondérations géographiques)
- **Les frais** (TER)
- **Le rendement de l'indice** sur 1 semaine, 1 mois, 6 mois, 1 an et 5 ans
- **La Tracking Difference**
- **L'encours du fonds**
- **La méthode de réplication** (physique directe, physique optimisée,
  synthétique/swap)
- **Le risque de change** (devises des actifs sous-jacents vs devise de
  cotation, en précisant si une couverture de change — hedged — existe)
- **Capitalisant ou distribuant**
- **La liquidité et le spread** (volume d'échange moyen, encours, fourchette
  bid/ask moyenne)
- **La concentration des positions** (poids des plus grosses lignes de
  l'indice, ex. poids du top 10 et/ou de la première ligne)

Si une donnée précise n'est pas trouvable ou reste incertaine après
vérification, indique-le clairement dans le tableau (ex. « non communiqué »)
plutôt que d'avancer un chiffre non confirmé — ne l'invente jamais.

Les rendements historiques sont donnés à titre purement informatif (contexte
de marché récent) : rappelle explicitement qu'ils ne préjugent pas des
performances futures et qu'ils ne doivent pas être utilisés pour choisir
l'ETF « le plus performant » sur ces horizons courts.

## Tableau récapitulatif

Présente ensuite un tableau comparatif regroupant tous les ETF (un ETF par
colonne ou par ligne, selon ce qui reste le plus lisible avec le nombre de
critères). Si un seul tableau devient trop dense pour rester lisible, tu peux
le scinder en plusieurs tableaux thématiques (ex. « Identité & coûts »,
« Performance de l'indice » — avec une colonne par horizon 1 semaine/1
mois/6 mois/1 an/5 ans —, « Réplication & tracking », « Risque &
diversification ») plutôt que d'en dégrader la lisibilité.

## Avis noté

Termine la comparaison par un avis noté, du **meilleur au moins bon** ETF de
la liste :

- attribue une note sur 10 à chaque ETF ;
- explique les critères de notation utilisés et leur pondération (coût total
  — TER, qualité de réplication — tracking difference, risque — risque de
  change et concentration des positions, taille/liquidité, diversification) ;
- explique pourquoi chaque ETF obtient sa note, avec ses points forts et
  faibles ;
- précise que cette notation ne repose pas sur la performance passée mais sur
  la qualité et le coût du véhicule d'investissement (le but n'est pas de
  maximiser le rendement mais d'optimiser le couple qualité/risque/coût) ;
- rappelle qu'il ne s'agit pas d'un conseil en investissement personnalisé et
  que le choix final dépend aussi de critères propres à l'investisseur
  (enveloppe disponible — PEA, CTO, assurance-vie —, éligibilité PEA le cas
  échéant, horizon, tolérance au risque : voir CLAUDE.md).

Sourcer toute donnée factuelle (indice, frais, encours, tracking difference,
réplication, concentration...). **Avant de citer un chiffre précis, vérifie-le
en direct avec WebSearch/WebFetch sur la source officielle plutôt que de te
fier à ta mémoire** : ces données évoluent et ta connaissance a une date de
coupure. Donne le lien de la page réellement consultée quand c'est possible
(émetteur de l'ETF, justETF, MSCI, Euronext, Morningstar...). Distingue
clairement les faits sourcés des estimations ou opinions, et rappelle que les
performances passées ne préjugent pas des performances futures.

Le rapport doit se terminer par :

- **Ce que j'ai appris**
- **Les risques à connaître**
- **L'action concrète que je peux envisager**

## Sortie affichée vs PDF (important)

Le contenu détaillé rédigé selon les consignes ci-dessus (fiche par ETF,
tableau récapitulatif, avis noté...) **ne doit pas être affiché dans la
réponse visible** : rédige-le directement en HTML pour le rapport PDF (étape
1 ci-dessous). Dans ta réponse affichée, donne uniquement un **bilan court**
de l'exécution : les ETF comparés, le classement obtenu (nom + note /10 pour
chacun), 1-2 points clés à retenir, puis le chemin du PDF généré. Le contenu
complet (fiches détaillées, tableaux, sourcing) ne doit exister que dans le
PDF.

## Export PDF (obligatoire à la fin de cette commande)

Rédige le rapport complet (structuré selon les consignes ci-dessus) et
exporte-le systématiquement en PDF, présenté de façon soignée :

1. Rédige intégralement le rapport (titres, tableaux, listes, liens) en HTML
   propre : `<h2>`/`<h3>` pour les titres, `<table>` pour les tableaux,
   `<ul>`/`<ol>` pour les listes, `<a href="...">` pour les liens. Ne mets que
   le contenu qui ira dans le corps du rapport (pas de balises
   `<html>`/`<head>`/`<body>`).
2. Lis le gabarit `scripts/report-template.html` et la feuille de style
   `scripts/report-style.css` (à la racine du projet), puis remplace dans le
   gabarit :
   - `{{TITLE}}` par un titre court résumant la comparaison réalisée (ex. les
     ETF comparés) ;
   - `{{COMMAND}}` par `/etf-compare` ;
   - `{{DATE_LABEL}}` par la date du jour au format lisible (ex. `7 septembre 2026`) ;
   - `{{STYLE}}` par le contenu intégral de `scripts/report-style.css` ;
   - `{{CONTENT}}` par le HTML produit à l'étape 1.
3. Écris ce HTML final dans un fichier temporaire (répertoire de scratch, pas
   dans le dépôt).
4. Calcule la date du jour au format `YYYYMMDD` (commande `date +%Y%m%d`).
5. Génère le PDF depuis la racine du projet avec :
   `bash scripts/render_pdf.sh <fichier_html_temporaire> infos/compare-<YYYYMMDD>.pdf`

   Note : contrairement aux autres commandes du projet, le nom de fichier de
   `/etf-compare` est `compare-<YYYYMMDD>.pdf` (et non
   `etf-compare_<YYYYMMDD>.pdf`).
6. Dans ta réponse affichée (pas dans le PDF), donne uniquement le bilan court
   défini ci-dessus et confirme le chemin du PDF généré
   (`infos/compare-<YYYYMMDD>.pdf`). Si un fichier du même nom existe déjà
   (plusieurs exécutions le même jour), écrase-le sans redemander
   confirmation.
