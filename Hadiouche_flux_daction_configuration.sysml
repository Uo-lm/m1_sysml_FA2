
package ConfigurationLIFASORT {

    private import ScalarValues::*;

    action def ConfigurerSysteme {

        attribute sommeEgale100 : Boolean;
        attribute limitesRespectees : Boolean;

        first start;
        then action afficherConfiguration;
        then action recevoirPourcentages;
        then action calculerSomme;

        then decide;
            if sommeEgale100 then verifierLimites;
            else afficherErreur;

        action verifierLimites;
        then decide;
            if limitesRespectees then ajusterCloisons;
            else afficherErreur;

        action afficherErreur;
        then recevoirPourcentages;

        action ajusterCloisons;
        then action enregistrerConfiguration;
        then action afficherConfirmation;
        then done;
    }
}
