


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

    /* Vue d'interconnexion globale */

    part vueInterconnexionLIFASORT {

        /* Commande principale */
        part controleur: ControleurCentral;

        /* Detection */
        part capteurPresence: CapteurPresence;
        part capteurOptique: CapteurOptique;
        part capteurRemplissage: CapteurRemplissage;

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

        /* Vidage et nettoyage */
        part dispositifAcces: DispositifAcces;

        /* Connexions de detection */
        connect zoneReception to capteurPresence;
        connect capteurPresence to controleur;
        connect capteurOptique to controleur;
        connect capteurRemplissage to controleur;

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
        connect controleur to supervision;

        /* Vidage et nettoyage */
        connect dispositifAcces to bacs;
        connect dispositifAcces to zoneReception;

    }
}


