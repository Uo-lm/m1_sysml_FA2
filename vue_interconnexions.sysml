


package LIFASORT_Global {

    /* Definitions des composants */

    part def ControleurCentral;
    part def CapteurPresence;
    part def CapteurOptique;
    part def CapteurRemplissage;
    part def MecanismeTri;
    part def Compacteur;
    part def Bacs;
    part def IHM;
    part def Supervision;
    part def DispositifAcces;
    part def ZoneReception;
    part def CloisonsReglables;
    part def ActionneurCloisons;
    part def Alimentation;
    part def CapteurBlocage;
    part def ArretAutomatique;
    part def UniteCommunication;

    /* Vue d'interconnexion globale */

    part vueInterconnexionLIFASORT {

        /* Commande principale */
        part controleur: ControleurCentral;
        part alimentation: Alimentation;

        /* Detection */
        part capteurPresence: CapteurPresence;
        part capteurOptique: CapteurOptique;
        part capteurRemplissage: CapteurRemplissage;
        part capteurBlocage: CapteurBlocage;
        part arretAutomatique: ArretAutomatique;

        /* Reception et tri */
        part zoneReception: ZoneReception;
        part mecanismeTri: MecanismeTri;

        /* Stockage et compression */
        part bacs: Bacs;
        part compacteur: Compacteur;

        /* Configuration des compartiments */
        part ihm: IHM;
        part actionneurCloisons: ActionneurCloisons;
        part cloisons: CloisonsReglables;

        /* Surveillance */
        part supervision: Supervision;
        part uniteCommunication: UniteCommunication;

        /* Vidage et nettoyage */
        part dispositifAcces: DispositifAcces;

        /* Connexions de detection */
        connect alimentation to controleur;
        connect zoneReception to capteurPresence;
        connect capteurPresence to controleur;
        connect capteurOptique to controleur;
        connect capteurRemplissage to controleur;
        connect capteurBlocage to controleur;
        connect controleur to arretAutomatique;

        /* Connexions du tri */
        connect controleur to mecanismeTri;
        connect mecanismeTri to bacs;

        /* Connexions de compression */
        connect controleur to compacteur;
        connect compacteur to bacs;

        /* Configuration des compartiments */
        connect ihm to controleur;
        connect controleur to actionneurCloisons;
        connect actionneurCloisons to cloisons;
        connect cloisons to bacs;

        /* Surveillance et alertes */
        connect controleur to uniteCommunication;
        connect uniteCommunication to supervision;

        /* Vidage et nettoyage */
        connect dispositifAcces to bacs;
        connect dispositifAcces to zoneReception;

    }
}

