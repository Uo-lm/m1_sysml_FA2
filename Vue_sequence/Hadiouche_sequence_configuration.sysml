
package SequenceConfiguration {

    part def Responsable;
    part def IHM;
    part def AutomateLIFASORT;

    occurrence def configurerSysteme {

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

    occurrence def configurationInvalide {

        part responsable : Responsable {
            event occurrence saisieInvalide;
            then event occurrence nouvelleSaisie;
        }

        part ihm : IHM {
            event occurrence recoitSaisieInvalide;
            then event occurrence afficheErreur;
            then event occurrence recoitNouvelleSaisie;
            then event occurrence transmetNouvelleSaisie;
        }

        part automate : AutomateLIFASORT {
            event occurrence recoitParametresInvalides;
            then event occurrence detecteErreur;
        }

        message saisirConfigurationInvalide
            from responsable.saisieInvalide
            to ihm.recoitSaisieInvalide;

        message controlerConfiguration
            from ihm.recoitSaisieInvalide
            to automate.recoitParametresInvalides;

        message signalerErreur
            from automate.detecteErreur
            to ihm.afficheErreur;

        message demanderNouvelleSaisie
            from ihm.recoitNouvelleSaisie
            to responsable.nouvelleSaisie;

        message ressaisirConfiguration
            from responsable.nouvelleSaisie
            to ihm.transmetNouvelleSaisie;

        first saisirConfigurationInvalide
            then controlerConfiguration
            then signalerErreur
            then demanderNouvelleSaisie
            then ressaisirConfiguration;
    }
}
