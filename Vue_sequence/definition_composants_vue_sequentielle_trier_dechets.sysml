
package lifasort {

    package parts {

        /* Acteurs */
        part def Utilisateur;
        part def Operateur :> Utilisateur;
        part def AgentMaintenance :> Utilisateur;

        /* Systeme global */
        part def PoubelleLIFASORT;

        /* Composants identifies */
        part def CapteurPresence;
        part def ControleurCentral;
        part def CapteurOptique;
        part def MecanismeTri;
        part def Compacteur;
        part def CapteurRemplissage;
        part def Supervision;

        /* Donnees transportees par les messages */
        part def CategorieDechet;
        part def NiveauRemplissage;
        part def Alerte;
    }
}
