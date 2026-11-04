package triDechets {

    package actionFlows {

        private import ScalarValues::Boolean;

        action verifierEtatSysteme {
            attribute identifiantsSaisis : Boolean;
            attribute accesRefuse : Boolean;
            attribute accesAutorise : Boolean;
            attribute fermetureDemandee : Boolean;
            attribute testDemande : Boolean;
            attribute anomalieDetectee : Boolean;
            attribute aucuneAnomalie : Boolean;

            action verifierIdentifiants;
            action afficherMessageRefus;
            action afficherMenuDiagnostic;
            action executerDiagnostic;
            action afficherResultats;
            action envoyerRapportSupervision;
            decide decide0;
            decide decide1;
            decide decide2;
            merge merge0;

            first start;
            succession start if identifiantsSaisis then verifierIdentifiants;
            then decide0;
                if accesRefuse then afficherMessageRefus;
                if accesAutorise then merge0;
            succession afficherMessageRefus then done;
            succession merge0 then afficherMenuDiagnostic;
            then decide1;
                if fermetureDemandee then done;
                if testDemande then executerDiagnostic;
            succession executerDiagnostic then afficherResultats;
            then decide2;
                if anomalieDetectee then envoyerRapportSupervision;
                if aucuneAnomalie then merge0;
            succession envoyerRapportSupervision then merge0;
        }
    }
}