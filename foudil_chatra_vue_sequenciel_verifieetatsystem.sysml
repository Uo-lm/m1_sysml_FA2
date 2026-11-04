package triDechets {
    private import triDechets::parts::*;

    package sequences {

        
        occurrence verifierEtatSystemeS1 {
            part interfaceOperateur : InterfaceOperateur;
            part automate : Automate;
            part dialogueConnexion : DialogueConnexion;
            part messageRefus : Message;

            message verifierEtatSysteme from interfaceOperateur to automate;
            message afficher from automate to dialogueConnexion;
            message identifiants of Identifiants from dialogueConnexion to automate;
            message afficher from automate to messageRefus;
            message from messageRefus to automate;
            message from automate to interfaceOperateur;
        }

        
        occurrence verifierEtatSystemeS2 {
            part interfaceOperateur : InterfaceOperateur;
            part automate : Automate;
            part dialogueConnexion : DialogueConnexion;
            part menuDiagnostic : MenuDiagnostic;
            part capteurs : Capteurs;
            part ecranResultats : EcranResultats;

            message verifierEtatSysteme from interfaceOperateur to automate;
            message afficher from automate to dialogueConnexion;
            message identifiants of Identifiants from dialogueConnexion to automate;
            message afficher from automate to menuDiagnostic;
            message test of DemandeTest from menuDiagnostic to automate;
            message diagnostiquer from automate to capteurs;
            message mesures of Mesures from capteurs to automate;
            message afficher of ResultatDiagnostic from automate to ecranResultats;
            message from ecranResultats to automate;
            message from automate to interfaceOperateur;
        }

        
        occurrence verifierEtatSystemeS3 {
            part interfaceOperateur : InterfaceOperateur;
            part automate : Automate;
            part dialogueConnexion : DialogueConnexion;
            part menuDiagnostic : MenuDiagnostic;
            part capteurs : Capteurs;
            part ecranResultats : EcranResultats;
            part uniteCommunication : UniteCommunication;

            message verifierEtatSysteme from interfaceOperateur to automate;
            message afficher from automate to dialogueConnexion;
            message identifiants of Identifiants from dialogueConnexion to automate;
            message afficher from automate to menuDiagnostic;
            message test of DemandeTest from menuDiagnostic to automate;
            message diagnostiquer from automate to capteurs;
            message mesures of Mesures from capteurs to automate;
            message afficher of ResultatDiagnostic from automate to ecranResultats;
            message from ecranResultats to automate;
            message envoyer of RapportDiagnostic from automate to uniteCommunication;
            message from uniteCommunication to automate;
            message from automate to interfaceOperateur;
        }
    }
}