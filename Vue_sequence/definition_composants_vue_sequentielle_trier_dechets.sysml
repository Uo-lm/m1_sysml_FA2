
package lifasort {

    package parts {

        part def Utilisateur;
        part def Operateur :> Utilisateur;
        part def AgentMaintenance :> Utilisateur;

        part def PoubelleLIFASORT;

        part def CapteurPresence;
        part def ControleurCentral;
        part def CapteurOptique;
        part def MecanismeTri;
        part def Compacteur;
        part def CapteurRemplissage;
        part def Supervision;

        part def CategorieDechet;
        part def NiveauRemplissage;
        part def Alerte;
    }
}
