# LIFASORT – Modélisation SysML v2

Modèle SysML v2 de **LIFASORT**, une poubelle de tri automatisée destinée à une entreprise. Le tri est fait en trois catégories : carton, métal et autres.
Ce travail a été réalisé dans le cadre des TD d'**Ingénierie des systèmes** du M1 Ingénierie des Systèmes Complexes (Université Paris-Saclay).

Tout le modèle se trouve dans le package racine `triDechets`. Il est découpé en trois fichiers :

| Fichier | Packages | Contenu |
|---|---|---|
| `LIFASORTutilisation.sysml` | `parts`, `useCases` | Les définitions des éléments, les acteurs et les cas d'utilisation |
| `LIFASORTcontexte.sysml` | `contexte` | Le système dans son environnement et ses flux avec l'extérieur |
| `vue_exigences.sysml` | `requirements`, `tracabilite` | L'arbre des exigences et les liens avec les cas d'utilisation |

---

## 1. Définitions – package `parts`

| `part def` | Rôle |
|---|---|
| `LIFASORT` | Le système étudié. Les compartiments de tri font partie du système |
| `Employe` | Employé qui dépose les déchets |
| `AgentEntretien` | Agent qui vide et nettoie les compartiments |
| `Technicien` | Technicien qui vérifie l'état du système |
| `ResponsableDeLigne` | Responsable qui configure le système |
| `Convoyeur` | Convoyeur qui amène les déchets |
| `ReseauElectrique` | Alimentation électrique 230 V / 50 Hz |
| `Supervision` | Poste de supervision qui reçoit les alertes |
| `BennesRecyclage` | Bennes de l'entreprise où l'agent dépose les déchets triés |

---

## 2. Vue contexte – package `contexte`

La `part def Contexte` place une instance de chaque élément autour de `lifasort : LIFASORT`.

| Flux | De | Vers |
|---|---|---|
| `deposeDechet` | `employe` | `lifasort` |
| `envoiDechets` | `convoyeur` | `lifasort` |
| `alimente` | `reseauElectrique` | `lifasort` |
| `envoiAlertes` | `lifasort` | `supervision` |
| `configure` | `responsableDeLigne` | `lifasort` |
| `verifieEtat` | `technicien` | `lifasort` |
| `collecteDechetsTries` | `lifasort` | `agentEntretien` |
| `deposeDechetsTries` | `agentEntretien` | `bennesRecyclage` |

---

## 3. Vue utilisation – package `useCases`

Chaque cas d'utilisation a pour sujet `lifasort : LIFASORT` et déclare son acteur.

| Cas d'utilisation | Acteur |
|---|---|
| `trierDechet` | `employe : Employe` |
| `viderBacs` | `agentEntretien : AgentEntretien` |
| `nettoyerPoubelle` | `agentEntretien : AgentEntretien` |
| `verifierEtatSysteme` | `technicien : Technicien` |
| `configurerSysteme` | `responsableDeLigne : ResponsableDeLigne` |

---

## 4. Vue exigences 

### Origine des exigences

| Source | Exigences |
|---|---|
| Cas d'utilisation | `triAutomatique`, `viderBacs`, `nettoyerPoubelle`, `verifierEtatSysteme`, `configurerSysteme` |
| Description du produit | `compactageDechets`, `surveillanceRemplissage`, `protectionAntiBlocage`, `depotDechet`, `interfaceOperateur`, `cloisonsReglables`, `accesCompartiments` |
| Éléments de contexte | `receptionConvoyeur`, `compatibiliteElectrique`, `communicationReseau`, `envoiAlertes` |
| Exigences chiffrées (bas niveau) | `tauxTri`, `tempsTri`, `tauxCompactage`, `seuilAlerteRemplissage`, `tempsArretBlocage`, et toutes les `contraintes` |

---

## 5. Traçabilité – package `tracabilite`

Chaque exigence issue d'un cas d'utilisation est reliée à ce cas par une `dependency`.

| Exigence | Cas d'utilisation |
|---|---|
| `triAutomatique` | `trierDechet` |
| `viderBacs` | `viderBacs` |
| `nettoyerPoubelle` | `nettoyerPoubelle` |
| `verifierEtatSysteme` | `verifierEtatSysteme` |
| `configurerSysteme` | `configurerSysteme` |


---

## Auteur
- Foudil CHATRA
- Lillia Hadiouche 
- Hugo Leiber-Masson
- Fatima Ourkia



utilisation 
conteneur a ajouter sa rajoute des exigence