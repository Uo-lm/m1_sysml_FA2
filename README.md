# m1_sysml_FA2: Poubelle de tri automatisée (SysML v2)

Modélisation SysML v2 de **LIFASORT**, une poubelle de tri automatisée destinée à une ligne de production, réalisée dans le cadre du TD *Ingénierie des systèmes*.

Tout le modèle est regroupé dans le package racine `triDechets`.

---

## Contenu du dépôt

| Fichier | Package / élément | Contenu |
|---|---|---|
| `contexte.sysml` | `triDechets::Contexte` | Diagramme de contexte : le système et son environnement |
| `useCases.sysml` | `triDechets::parts`, `triDechets::useCases` | Acteurs et cas d'utilisation |
| `requirements.sysml` | `triDechets::requirements` | Arbre des exigences |

---

## 1. Contexte

La `part def Contexte` décrit LIFASORT et les éléments extérieurs avec lesquels il échange.

| Élément | Flux | Sens |
|---|---|---|
| Employé | `utilise` | Employé → LIFASORT |
| Agent d'entretien | `entretient` | Agent d'entretien → LIFASORT |
| Déchets | `tries` | LIFASORT → Déchets |
| Réseau électrique | `alimente` | Réseau électrique → LIFASORT |
| Supervision | `recevoiralertes` | LIFASORT → Supervision |
| Responsable de ligne | `configure` | Responsable de ligne → LIFASORT |

```
                 Employé ──utilise──┐
        Agent d'entretien ──entretient──┐
      Responsable de ligne ──configure──┤
       Réseau électrique ──alimente──┤
                                      ▼
                                 ┌──────────┐
                                 │ LIFASORT │
                                 └──────────┘
                                   │      │
                              tries│      │recevoiralertes
                                   ▼      ▼
                              Déchets   Supervision
```

---

## 2. Acteurs et cas d'utilisation

### Acteurs (`triDechets::parts`)

| Acteur | Type |
|---|---|
| `employer` | `Employer` |
| `agententretien` | `AgentEntretien` |
| `technicien` | `Technicien` |
| `responsable` | `Responsabledeligne` |

### Cas d'utilisation (`triDechets::useCases`)

| Cas d'utilisation | Acteur | Description |
|---|---|---|
| `trierDechet` | Employé | Déposer un déchet pour qu'il soit trié automatiquement |
| `viderBacs` | Agent d'entretien | Vider les compartiments pleins |
| `nettoyerPoubelle` | Agent d'entretien | Nettoyer l'intérieur du système |
| `verifieetatsystem` | Technicien | Vérifier l'état de fonctionnement |
| `confirgurerSysteme` | Responsable de ligne | Configurer les paramètres (catégories, cloisons, seuils) |

---

## 3. Exigences

Les exigences sont organisées en arbre par spécialisation (`specializes`), à partir d'une exigence racine `specificationsLIFASORT`.

```
specificationsLIFASORT
├── fonctions
│   ├── triAutomatique
│   │   ├── tauxTri                  ≥ 95 % de déchets bien triés
│   │   └── tempsTri                 < 3 s entre dépôt et compartiment
│   ├── viderBacs
│   ├── nettoyerPoubelle
│   ├── verifierEtatSysteme
│   ├── configurerSysteme
│   ├── compactageDechets
│   │   └── tauxCompactage           volume réduit d'un facteur ≥ 3
│   ├── surveillanceRemplissage
│   │   └── seuilAlerteRemplissage   alerte à 80 % de remplissage
│   └── protectionAntiBlocage
│       └── tempsArretBlocage        arrêt < 1 s après blocage
├── interactionsMaterielles
│   ├── depotDechet                  trappe d'entrée
│   ├── interfaceOperateur           consultation et configuration locales
│   ├── cloisonsReglables            volume des compartiments ajustable
│   ├── accesCompartiments           compartiments accessibles et amovibles
│   ├── compatibiliteElectrique      230 V / 50 Hz
│   ├── envoiAlertes                 remplissage, blocage, panne → supervision
│   └── communicationReseau          liaison filaire ou sans fil
└── contraintes
    ├── capaciteCompartiment         ≥ 60 L par compartiment
    ├── coutRevient                  < 3 000 €
    ├── encombrement                 < 1 m × 0,8 m au sol, hauteur < 1,5 m
    ├── consommationElectrique       < 500 W
    ├── niveauSonore                 < 60 dB
    └── securiteUtilisateur          aucune pièce mobile accessible
```

### Origine des exigences

- **Cas d'utilisation** : `triAutomatique`, `viderBacs`, `nettoyerPoubelle`, `verifierEtatSysteme`, `configurerSysteme`
- **Description du produit** : compactage, surveillance du remplissage, anti-blocage, trappe, interface, cloisons, accès aux compartiments
- **Interactions avec le contexte** : alimentation électrique, envoi d'alertes, communication réseau
- **Exigences de bas niveau (chiffrées)** : taux et temps de tri, compactage, seuil d'alerte, temps d'arrêt, capacité, coût, encombrement, consommation, bruit, sécurité

---


utilisation 
conteneur a ajouter sa rajoute des exigence

## Auteur
- Foudil CHATRA
- Lillia
- Hugo
- Fatime 
