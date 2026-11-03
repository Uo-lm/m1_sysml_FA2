package triDechets {
    package requirements {

        /* exigences extraites des cas d'utilisation */
        requirement triAutomatique specializes fonctions {
            doc /* le système doit identifier automatiquement chaque déchet déposé et l'orienter vers le compartiment adapté (carton, métal, autres) */
        }
        requirement viderBacs specializes fonctions {
            doc /* l'agent d'entretien doit pouvoir vider les compartiments du système */
        }
        requirement nettoyerPoubelle specializes fonctions {
            doc /* l'agent d'entretien doit pouvoir nettoyer l'intérieur du système */
        }
        requirement verifierEtatSysteme specializes fonctions {
            doc /* le technicien doit pouvoir vérifier l'état de fonctionnement du système */
        }
        requirement configurerSysteme specializes fonctions {
            doc /* le responsable de ligne doit pouvoir configurer les paramètres du système (catégories, cloisons, seuils) */
        }

        /* exigences extraites de la description du produit */
        requirement compactageDechets specializes fonctions {
            doc /* le système doit compacter les déchets stockés dans les compartiments */
        }
        requirement surveillanceRemplissage specializes fonctions {
            doc /* le système doit mesurer en continu le niveau de remplissage de chaque compartiment */
        }
        requirement protectionAntiBlocage specializes fonctions {
            doc /* le système doit détecter un blocage du mécanisme et s'arrêter automatiquement */
        }
        requirement depotDechet specializes interactionsMaterielles {
            doc /* l'employé doit pouvoir déposer un déchet par une trappe d'entrée */
        }
        requirement interfaceOperateur specializes interactionsMaterielles {
            doc /* le système doit disposer d'une interface locale permettant de consulter l'état et de configurer le système */
        }
        requirement cloisonsReglables specializes interactionsMaterielles {
            doc /* le volume des compartiments doit pouvoir être ajusté à l'aide de cloisons réglables */
        }
        requirement accesCompartiments specializes interactionsMaterielles {
            doc /* les compartiments doivent être accessibles et amovibles pour le vidage et le nettoyage */
        }

        /* exigences extraites des interactions avec les éléments de contexte */
        requirement compatibiliteElectrique specializes interactionsMaterielles {
            doc /* le système est compatible avec le réseau électrique de l'entreprise (230 V / 50 Hz) */
        }
        requirement envoiAlertes specializes interactionsMaterielles {
            doc /* le système doit transmettre ses alertes (remplissage, blocage, panne) au poste de supervision */
        }
        requirement communicationReseau specializes interactionsMaterielles {
            doc /* le dispositif doit être pourvu d'une connexion réseau (filaire ou sans fil) vers la supervision */
        }

        /* exigences de bas niveau (chiffrées) */
        requirement tauxTri specializes triAutomatique {
            doc /* le taux de déchets correctement triés doit être supérieur ou égal à 95 % */
        }
        requirement tempsTri specializes triAutomatique {
            doc /* le tri d'un déchet doit durer moins de 3 s entre le dépôt et l'arrivée dans le compartiment */
        }
        requirement tauxCompactage specializes compactageDechets {
            doc /* le compactage doit réduire le volume des déchets d'un facteur au moins égal à 3 */
        }
        requirement seuilAlerteRemplissage specializes surveillanceRemplissage {
            doc /* une alerte doit être émise lorsqu'un compartiment atteint 80 % de sa capacité */
        }
        requirement tempsArretBlocage specializes protectionAntiBlocage {
            doc /* le système doit s'arrêter en moins de 1 s après la détection d'un blocage */
        }
        requirement capaciteCompartiment specializes contraintes {
            doc /* chaque compartiment doit avoir une capacité d'au moins 60 L */
        }
        requirement coutRevient specializes contraintes {
            doc /* le prix de revient doit être inférieur à 3 000 € */
        }
        requirement encombrement specializes contraintes {
            doc /* l'encombrement au sol doit être inférieur à 1 m x 0,8 m pour une hauteur inférieure à 1,5 m */
        }
        requirement consommationElectrique specializes contraintes {
            doc /* la puissance consommée doit être inférieure à 500 W */
        }
        requirement niveauSonore specializes contraintes {
            doc /* le niveau sonore en fonctionnement doit être inférieur à 60 dB */
        }
        requirement securiteUtilisateur specializes contraintes {
            doc /* aucune pièce mobile (orientation, piston) ne doit être accessible à l'utilisateur en fonctionnement */
        }

        /* exigences créées pour regrouper l'ensemble de manière hiérarchique */
        requirement contraintes specializes specificationsLIFASORT {
            doc /* le système doit respecter les contraintes ci-dessous */
        }
        requirement fonctions specializes specificationsLIFASORT {
            doc /* le système doit comprendre les fonctions listées ci-dessous */
        }
        requirement interactionsMaterielles specializes specificationsLIFASORT {
            doc /* le système doit pouvoir disposer des interactions matérielles listées */
        }
        requirement specificationsLIFASORT {
            doc /* le système répond aux catégories d'exigences listées ci-dessous */
        }
    }
}