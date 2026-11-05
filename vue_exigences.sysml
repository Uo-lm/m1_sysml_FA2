package triDechets {

    package requirements {


        requirement specificationsLIFASORT {
            doc /* le système doit répondre aux catégories d'exigences listées ci-dessous */
        }
        requirement fonctions :> specificationsLIFASORT {
            doc /* le système doit comprendre les fonctions listées ci-dessous */
        }
        requirement interactionsMaterielles :> specificationsLIFASORT {
            doc /* le système doit disposer des interactions matérielles listées ci-dessous */
        }
        requirement contraintes :> specificationsLIFASORT {
            doc /* le système doit respecter les contraintes listées ci-dessous */
        }

        requirement triAutomatique :> fonctions {
            doc /* le système doit identifier automatiquement chaque déchet déposé et l'orienter vers le compartiment adapté (carton, métal, autres) */
        }
        requirement viderBacs :> fonctions {
            doc /* le système doit permettre à l'agent d'entretien de vider les compartiments */
        }
        requirement nettoyerPoubelle :> fonctions {
            doc /* le système doit permettre à l'agent d'entretien de nettoyer son intérieur */
        }
        requirement verifierEtatSysteme :> fonctions {
            doc /* le système doit permettre au technicien de vérifier son état de fonctionnement */
        }
        requirement configurerSysteme :> fonctions {
            doc /* le système doit permettre au responsable de ligne de configurer ses paramètres (catégories, cloisons, seuils) */
        }

        requirement compactageDechets :> fonctions {
            doc /* le système doit compacter les déchets stockés dans les compartiments */
        }
        requirement surveillanceRemplissage :> fonctions {
            doc /* le système doit mesurer en continu le niveau de remplissage de chaque compartiment */
        }
        requirement protectionAntiBlocage :> fonctions {
            doc /* le système doit détecter un blocage du mécanisme et s'arrêter automatiquement */
        }
        requirement depotDechet :> interactionsMaterielles {
            doc /* le système doit permettre à l'employé de déposer un déchet par une trappe d'entrée */
        }
        requirement receptionConvoyeur :> interactionsMaterielles {
            doc /* le système doit pouvoir recevoir les déchets amenés par le convoyeur */
        }
        requirement interfaceOperateur :> interactionsMaterielles {
            doc /* le système doit disposer d'une interface locale permettant de consulter son état et de le configurer */
        }
        requirement cloisonsReglables :> interactionsMaterielles {
            doc /* le volume des compartiments doit pouvoir être ajusté à l'aide de cloisons réglables */
        }
        requirement accesCompartiments :> interactionsMaterielles {
            doc /* les compartiments doivent être accessibles et amovibles pour le vidage et le nettoyage */
        }

        requirement compatibiliteElectrique :> interactionsMaterielles {
            doc /* le système doit être compatible avec le réseau électrique de l'entreprise (230 V / 50 Hz) */
        }
        requirement communicationReseau :> interactionsMaterielles {
            doc /* le système doit être pourvu d'une connexion réseau (filaire ou sans fil) vers la supervision */
        }
        requirement envoiAlertes :> fonctions {
            doc /* le système doit transmettre ses alertes (remplissage, blocage, panne) au poste de supervision */
        }

        requirement tauxTri :> triAutomatique {
            doc /* le taux de déchets correctement triés doit être supérieur ou égal à 95 % */
        }
        requirement tempsTri :> triAutomatique {
            doc /* le tri d'un déchet doit durer moins de 3 s entre le dépôt et l'arrivée dans le compartiment */
        }
        requirement tauxCompactage :> compactageDechets {
            doc /* le compactage doit réduire le volume des déchets d'un facteur au moins égal à 3 */
        }
        requirement seuilAlerteRemplissage :> surveillanceRemplissage {
            doc /* une alerte doit être émise lorsqu'un compartiment atteint 80 % de sa capacité */
        }
        requirement tempsArretBlocage :> protectionAntiBlocage {
            doc /* le système doit s'arrêter en moins de 1 s après la détection d'un blocage */
        }
        requirement capaciteCompartiment :> contraintes {
            doc /* chaque compartiment doit avoir une capacité d'au moins 60 L */
        }
        requirement coutRevient :> contraintes {
            doc /* le prix de revient doit être inférieur à 3 000 € */
        }
        requirement encombrement :> contraintes {
            doc /* l'encombrement au sol doit être inférieur à 1 m x 0,8 m pour une hauteur inférieure à 1,5 m */
        }
        requirement consommationElectrique :> contraintes {
            doc /* la puissance consommée doit être inférieure à 500 W */
        }
        requirement niveauSonore :> contraintes {
            doc /* le niveau sonore en fonctionnement doit être inférieur à 60 dB */
        }
        requirement securiteUtilisateur :> contraintes {
            doc /* aucune pièce mobile (orientation, piston) ne doit être accessible à l'utilisateur en fonctionnement */
        }

    }

    package tracabilite {
        dependency from triDechets::requirements::triAutomatique to triDechets::useCases::trierDechet;
        dependency from triDechets::requirements::viderBacs to triDechets::useCases::viderBacs;
        dependency from triDechets::requirements::nettoyerPoubelle to triDechets::useCases::nettoyerPoubelle;
        dependency from triDechets::requirements::verifierEtatSysteme to triDechets::useCases::verifierEtatSysteme;
        dependency from triDechets::requirements::configurerSysteme to triDechets::useCases::configurerSysteme;
    }
    
}