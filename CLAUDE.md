# myInvest

Projet de veille, d'analyse et de coaching en investissement personnel. Objectif :
accompagner un investisseur novice dans ses choix, en particulier pour l'ouverture
et la construction d'un PEA.

## Profil de l'investisseur (à mettre à jour si la situation change)

- Assurance-vie : ~50 k€, versements programmés de 100 €/mois
- PER : ~14 k€, versements programmés de 100 €/mois
- Livret A : ~2 k€
- Autre plan d'épargne : ~8,5 k€, versements programmés de 100 €/mois
- Projet en cours : ouverture et investissement sur un **PEA**
- Niveau de connaissance en investissement : **débutant**

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

## Commandes disponibles

- `/pea-coach <question>` — coach pédagogique généraliste (investissement, ETF,
  fiscalité) pour répondre à une question précise.
- `/pea-plan` — construction ou revue d'une stratégie/allocation PEA complète,
  adaptée au profil ci-dessus.
- `/portfolio-audit <composition du portefeuille>` — audit critique d'un
  portefeuille existant (lignes détenues, poids, frais).
