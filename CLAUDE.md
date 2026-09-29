# myInvest

Projet de veille, d'analyse et de coaching en investissement personnel. Objectif :
accompagner un investisseur novice dans ses choix, en particulier pour l'ouverture
et la construction d'un PEA.

## Profil de l'investisseur (à mettre à jour si la situation change)

- Assurance-vie : ~50 k€, versements programmés de 100 €/mois
- PER : ~14 k€, versements programmés de 100 €/mois
- Livret A : ~2 k€
- Autre plan d'épargne : ~8,5 k€, versements programmés de 100 €/mois
- **PEA ouvert chez Fortuneo.** Date d'ouverture fiscale = date du 1er
  versement (règle : c'est cette date, pas la date de signature du contrat,
  qui fait courir le délai de 5 ans — source : service-public.gouv.fr F2385) :
  **16 septembre 2026**. Exonération d'IR sur les gains acquise à partir du
  16/09/2031 (prélèvements sociaux restant dus, taux 18,6 % depuis le
  01/01/2026).
- **Composition actuelle du PEA** (au 25/09/2026) :
  - 15 parts **Amundi PEA Monde (MSCI World) UCITS ETF Acc** (ticker DCAM,
    ISIN FR001400U5Q4), achetées le 25/09/2026 à 6,263 €/part (≈ 93,95 €
    investis), 0 € de frais de courtage (1er ordre du mois, formule Starter)
  - solde espèces résiduel ≈ 6,05 €
- Projet en cours : poursuivre les versements programmés (100 €/mois) et,
  selon la stratégie retenue (voir `infos/pea-plan_20260925.pdf`), éventuellement
  diversifier sur d'autres zones (US, Europe, émergents)
- Niveau de connaissance en investissement : **débutant**
- Date de naissance : **5 août 1978**
- Âge : **48 ans**
- Horizon de placement (PEA) : **15 ans et plus**
- Montant disponible pour le PEA : **500 € à l'ouverture + 100 €/mois**
- Tolérance au risque réelle : **moyenne**
- Objectif précis du PEA : **complément de retraite**

## Principes transverses (valables pour toutes les commandes de ce projet)

- **Pédagogie avant tout.** Le but est d'aider l'investisseur à comprendre et à
  décider par lui-même, pas de lui dicter une allocation.
- **Sourcer les informations factuelles** (frais, fiscalité, composition d'indice,
  performances...) sur des sites de référence : AMF (amf-france.org),
  service-public.fr, impots.gouv.fr, sites des émetteurs d'ETF (Amundi, iShares,
  Lyxor/Amundi, BNP Paribas Easy...), justETF, MSCI, Euronext. Donner le lien
  quand c'est possible.
- **Distinguer explicitement** faits / hypothèses / opinions.
- **Aucun conseil financier personnalisé engageant** : on explique, on compare,
  on liste avantages/inconvénients/risques, on laisse la décision finale à
  l'investisseur.
- Toujours préciser que les performances passées ne préjugent pas des
  performances futures.

## Export PDF des commandes

Chaque exécution de `/pea-coach`, `/pea-plan`, `/portfolio-audit` ou
`/etf-compare` doit produire un rapport PDF mis en forme dans `infos/`, nommé
`<commande>_<AAAAMMJJ>.pdf` (ex. `pea-plan_20260901.pdf`) — à l'exception de
`/etf-compare`, dont le fichier est nommé `compare-<AAAAMMJJ>.pdf`. Gabarit et
style : `scripts/report-template.html` / `scripts/report-style.css`.
Génération : `scripts/render_pdf.sh` (Chrome headless). Le détail de la
procédure est dans chaque fichier de commande.

**Le contenu détaillé de l'analyse ne doit jamais être affiché dans la
réponse en sortie standard** : il est rédigé directement pour le rapport PDF.
La réponse affichée se limite à un bilan court de l'exécution (ce qui a été
traité, quelques points clés) suivi de la confirmation du chemin du PDF
généré.

## Commandes disponibles

- `/pea-coach <question>` — coach pédagogique généraliste (investissement, ETF,
  fiscalité) pour répondre à une question précise.
- `/pea-plan` — construction ou revue d'une stratégie/allocation PEA complète,
  adaptée au profil ci-dessus.
- `/portfolio-audit <composition du portefeuille>` — audit critique d'un
  portefeuille existant (lignes détenues, poids, frais).
- `/etf-compare <ETF 1> <ETF 2> ...` — chaque ETF peut être donné par son nom
  ou son code ISIN. Comparaison de plusieurs ETF (indice,
  diversification, frais, performances 1 semaine/1 mois/6 mois/1 an/5 ans,
  tracking, encours, réplication, risques, liquidité/spread, concentration...)
  avec tableau récapitulatif et avis noté du meilleur au moins bon.
