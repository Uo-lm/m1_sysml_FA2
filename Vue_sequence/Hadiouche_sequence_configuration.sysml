
package SequenceConfiguration {

    part def Responsable;
    part def IHM;
    part def AutomateLIFASORT;

    occurrence def ConfigurerSysteme {

        part responsable : Responsable {
            event occurrence demande;
            then event occurrence saisie;
            then event occurrence confirmation;
        }

        part ihm : IHM {
            event occurrence recoitDemande;
            then event occurrence afficheParametres;
            then event occurrence recoitSaisie;
            then event occurrence transmetParametres;
            then event occurrence recoitConfirmation;
            then event occurrence afficheConfirmation;
        }

        part automate : AutomateLIFASORT {
            event occurrence recoitParametres;
            then event occurrence confirmeConfiguration;
        }

        message demanderConfiguration
            from responsable.demande
            to ihm.recoitDemande;

        message afficherParametres
            from ihm.afficheParametres
            to responsable.saisie;


        message saisirPourcentagess from responsable to ihm;
        message envoyerPourcentages
            from ihm.transmetParametres
            to automate.recoitParametres;

        message confirmerConfiguration
            from automate.confirmeConfiguration
            to ihm.recoitConfirmation;

        message afficherConfirmation
            from ihm.afficheConfirmation
            to responsable.confirmation;

        first demanderConfiguration
            then afficherParametres
            then saisirPourcentagess
            then envoyerPourcentages
            then confirmerConfiguration
            then afficherConfirmation;
    }
}
