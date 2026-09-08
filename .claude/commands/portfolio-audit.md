---
description: Audit critique d'un portefeuille existant, façon conseiller patrimonial indépendant (usage libre, à volonté)
---

Analyse mon portefeuille comme un conseiller patrimonial indépendant
(pédagogique, sans conflit d'intérêt, sans chercher à vendre quoi que ce soit).

Composition du portefeuille à auditer : $ARGUMENTS

Si aucune composition n'est fournie ci-dessus, demande-moi de lister mes
lignes (support, nom du produit/ETF/fonds, montant ou poids en %) avant de
poursuivre. Tiens compte aussi de l'existant décrit dans CLAUDE.md
(assurance-vie, PER, livret A, autre épargne) pour la vision globale, si
pertinent.

Pour chaque ligne du portefeuille :

- explique ce que je possède réellement (nature du produit, ce qu'il réplique
  ou contient) ;
- le poids dans le portefeuille ;
- les doublons éventuels avec d'autres lignes ;
- les concentrations géographiques ;
- les concentrations sectorielles ;
- les risques spécifiques ;
- les frais (préciser le TER et tout autre frais connu, avec source).

Ensuite, à l'échelle du portefeuille global :

- estime le niveau de risque global ;
- identifie les incohérences (doublons, sur-concentration, frais cumulés
  excessifs, inadéquation avec l'horizon ou la tolérance au risque) ;
- propose des pistes d'amélioration concrètes ;
- explique pourquoi pour chaque piste.

Contrainte importante : **ne cherche pas à maximiser la performance**, mais à
optimiser le couple rendement/risque et la cohérence globale avec mon profil.

Sourcer toute donnée factuelle (composition d'indice, frais, fiscalité).
**Avant de citer un chiffre précis (TER, composition d'indice, seuil
fiscal...), vérifie-le en direct avec WebSearch/WebFetch sur la source
officielle plutôt que de te fier à ta mémoire** : ces données évoluent et ta
connaissance a une date de coupure. Donne le lien de la page réellement
consultée quand c'est possible (AMF, service-public.fr, impots.gouv.fr,
émetteur du produit, justETF, MSCI, Euronext...). Si une vérification échoue
ou reste incertaine, dis-le clairement plutôt que d'avancer un chiffre non
confirmé. Distingue clairement les faits des hypothèses et opinions.

Termine par :

- **Ce que j'ai appris**
- **Les risques à connaître**
- **L'action concrète que je peux envisager**

## Export PDF (obligatoire à la fin de cette commande)

Une fois la réponse ci-dessus rédigée et affichée, exporte-la systématiquement
en PDF, présentée de façon soignée :

1. Convertis intégralement la réponse (titres, tableaux, listes, liens) en
   HTML propre : `<h2>`/`<h3>` pour les titres, `<table>` pour les tableaux,
   `<ul>`/`<ol>` pour les listes, `<a href="...">` pour les liens. Ne mets que
   le contenu qui ira dans le corps du rapport (pas de balises
   `<html>`/`<head>`/`<body>`).
2. Lis le gabarit `scripts/report-template.html` et la feuille de style
   `scripts/report-style.css` (à la racine du projet), puis remplace dans le
   gabarit :
   - `{{TITLE}}` par un titre court résumant l'audit réalisé ;
   - `{{COMMAND}}` par `/portfolio-audit` ;
   - `{{DATE_LABEL}}` par la date du jour au format lisible (ex. `7 septembre 2026`) ;
   - `{{STYLE}}` par le contenu intégral de `scripts/report-style.css` ;
   - `{{CONTENT}}` par le HTML produit à l'étape 1.
3. Écris ce HTML final dans un fichier temporaire (répertoire de scratch, pas
   dans le dépôt).
4. Calcule la date du jour au format `YYYYMMDD` (commande `date +%Y%m%d`).
5. Génère le PDF depuis la racine du projet avec :
   `bash scripts/render_pdf.sh <fichier_html_temporaire> infos/portfolio-audit_<YYYYMMDD>.pdf`
6. Confirme dans ta réponse le chemin du PDF généré
   (`infos/portfolio-audit_<YYYYMMDD>.pdf`). Si un fichier du même nom existe
   déjà (plusieurs exécutions le même jour), écrase-le sans redemander
   confirmation.
