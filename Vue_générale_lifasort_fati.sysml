
package LIFASORT_VueGenerale {

    /* 1. DEFINITION DES COMPOSANTS */

    package Composants {

        /* Structure */
        part def Chassis;
        part def Enveloppe;
        part def TrappeEntree;
        part def GuideEntree;

        /* Tri automatique */
        part def CapteurOptique;
        part def EclairageDetection;
        part def UniteTraitement;
        part def MecanismeOrientation;

        /* Stockage */
        part def BacCarton;
        part def BacMetal;
        part def BacAutres;
        part def ConteneurDechets;
        part def CloisonsMobiles;

        /* Protection */
        part def CapteurMoteur;
        part def DetecteurBlocage;
        part def ArretAutomatique;

        /* Compactage */
        part def Piston;
        part def Actionneur;
        part def CapteurPosition;

        /* Remplissage */
        part def CapteurNiveau;
        part def UniteCommunication;

        /* Commande */
        part def Automate;
        part def ModuleEntreesSorties;
        part def Alimentation;
        part def InterfaceConfiguration;
    }

    /* 2. DEFINITION DES SOUS-SYSTEMES */

    package SousSystemes {

        private import
            LIFASORT_VueGenerale::Composants::*;

        part def StructurePrincipale {
            part chassis : Chassis;
            part enveloppe : Enveloppe;
            part trappe : TrappeEntree;
            part guide : GuideEntree;
        }

        part def SystemeDeTri {
            part capteur : CapteurOptique;
            part eclairage : EclairageDetection;
            part traitement : UniteTraitement;
            part orientation : MecanismeOrientation;
        }

        part def StockageAdaptable {
            part carton : BacCarton;
            part metal : BacMetal;
            part autres : BacAutres;
            part conteneurs : ConteneurDechets[3];
            part cloisons : CloisonsMobiles;
        }

        part def SystemeAntiBlocage {
            part capteur : CapteurMoteur;
            part detection : DetecteurBlocage;
            part arret : ArretAutomatique;
        }

        part def SystemeCompactage {
            part piston : Piston;
            part actionneur : Actionneur;
            part position : CapteurPosition;
        }

        part def SurveillanceRemplissage {
            part capteur : CapteurNiveau;
            part communication : UniteCommunication;
        }

        part def SystemeCommande {
            part automate : Automate;
            part entreesSorties : ModuleEntreesSorties;
            part alimentation : Alimentation;
            part ihm : InterfaceConfiguration;
        }
    }

    /* 3. ARCHITECTURE DU SYSTEME COMPLET */

    package Architecture {

        private import
            LIFASORT_VueGenerale::SousSystemes::*;

        part def SystemeLIFASORT {

            part structure : StructurePrincipale;

            part tri : SystemeDeTri;

            part stockage : StockageAdaptable;

            part antiBlocage : SystemeAntiBlocage;

            part compactage : SystemeCompactage;

            part surveillance : SurveillanceRemplissage;

            part commande : SystemeCommande;
        }

        part lifasort : SystemeLIFASORT;
    }

    /* 4. ACTEURS ET ENVIRONNEMENT */

    package Environnement {

        part def Employe;
        part def AgentEntretien;
        part def Technicien;
        part def ResponsableDeLigne;

        part def Convoyeur;
        part def ReseauElectrique;
        part def DechetsEntrants;
        part def DechetsTries;
        part def Supervision;
    }

    /* 5. CAS D'UTILISATION */

    package CasUtilisation {

        use case def TrierDechet;

        use case def ViderBacs;

        use case def NettoyerPoubelle;

        use case def VerifierEtatSysteme;

        use case def configurerSysteme;
    }
}
