---
description: Construction/révision d'une stratégie et allocation PEA complète (usage libre, à volonté)
---

Je souhaite construire (ou revoir) un portefeuille PEA pour investir sur le
long terme.

Agis comme un formateur en investissement (pédagogique, pas commercial).

Éléments additionnels éventuels apportés pour cette exécution : $ARGUMENTS

Avant de proposer un ETF ou une allocation, analyse mon profil à partir des
informations disponibles dans CLAUDE.md et de ce que j'ai indiqué ci-dessus :

- mon âge (demande-le si tu ne l'as pas) ;
- mon horizon de placement ;
- ma situation patrimoniale (assurance-vie, PER, livret A, autre épargne —
  voir CLAUDE.md) ;
- mon épargne disponible pour le PEA ;
- ma tolérance au risque ;
- mon objectif (retraite, complément de revenu, achat immobilier,
  transmission, etc.).

Si une de ces informations manque et qu'elle est nécessaire à ta recommandation,
demande-la moi explicitement plutôt que de supposer.

Ensuite, structure ta réponse ainsi :

1. **Les bases du PEA** : fonctionnement, plafond, fiscalité, contraintes de
   retrait, ce qui est éligible ou non.
2. **Les classes d'actifs possibles** au sein d'un PEA.
3. **Les indices les plus connus**, expliqués simplement :
   - MSCI World
   - S&P 500
   - Nasdaq 100
   - MSCI Emerging Markets
   - Stoxx Europe 600
4. **Les ETF PEA les plus populaires** pour ces indices (avec, pour chacun :
   indice suivi, nombre d'entreprises, zones géographiques, frais, risques,
   performances historiques en rappelant qu'elles ne préjugent pas de l'avenir,
   éligibilité PEA).
5. **Comparaison des coûts** entre ces ETF.
6. **Simulation de 3 stratégies** : prudente, équilibrée, dynamique — avec une
   allocation indicative pour chacune.
7. **Points de vigilance fiscaux** propres au PEA (retraits avant/après 5 ans,
   versements, clôture, etc.).

Pour chaque recommandation :
- explique le pourquoi ;
- indique les risques ;
- donne les arguments pour et contre.

Sourcer toute information factuelle (frais, fiscalité, composition d'indice,
performances). **Avant de citer un chiffre précis (TER, plafond PEA,
composition d'indice, performance...), vérifie-le en direct avec
WebSearch/WebFetch sur la source officielle plutôt que de te fier à ta
mémoire** : ces données évoluent et ta connaissance a une date de coupure.
Donne le lien de la page réellement consultée (AMF, service-public.fr,
impots.gouv.fr, émetteurs d'ETF, justETF, MSCI, Euronext...). Si une
vérification échoue ou reste incertaine, dis-le clairement plutôt que
d'avancer un chiffre non confirmé.

Le rapport doit se terminer par :

- **Ce que j'ai appris**
- **Les risques à connaître**
- **L'action concrète que je peux envisager**

## Sortie affichée vs PDF (important)

Le contenu détaillé rédigé selon les consignes ci-dessus (les 7 sections,
comparaisons, simulations...) **ne doit pas être affiché dans la réponse
visible** : rédige-le directement en HTML pour le rapport PDF (étape 1
ci-dessous). Dans ta réponse affichée, donne uniquement un **bilan court** de
l'exécution : ce qui a été traité, 2-3 points clés à retenir, puis le chemin
du PDF généré. Le contenu complet, structuré et sourcé, ne doit exister que
dans le PDF.

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
   - `{{TITLE}}` par un titre court résumant la stratégie/allocation traitée ;
   - `{{COMMAND}}` par `/pea-plan` ;
   - `{{DATE_LABEL}}` par la date du jour au format lisible (ex. `7 septembre 2026`) ;
   - `{{STYLE}}` par le contenu intégral de `scripts/report-style.css` ;
   - `{{CONTENT}}` par le HTML produit à l'étape 1.
3. Écris ce HTML final dans un fichier temporaire (répertoire de scratch, pas
   dans le dépôt).
4. Calcule la date du jour au format `YYYYMMDD` (commande `date +%Y%m%d`).
5. Génère le PDF depuis la racine du projet avec :
   `bash scripts/render_pdf.sh <fichier_html_temporaire> infos/pea-plan_<YYYYMMDD>.pdf`
6. Dans ta réponse affichée (pas dans le PDF), donne uniquement le bilan court
   défini ci-dessus et confirme le chemin du PDF généré
   (`infos/pea-plan_<YYYYMMDD>.pdf`). Si un fichier du même nom existe déjà
   (plusieurs exécutions le même jour), écrase-le sans redemander confirmation.
