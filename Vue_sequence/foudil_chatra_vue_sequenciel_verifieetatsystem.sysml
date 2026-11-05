package triDechets {
    package parts {
        part def InterfaceOperateur;
        part def Automate;
        part def DialogueConnexion;
        part def Message;
        part def MenuDiagnostic;
        part def Capteurs;
        part def EcranResultats;
        part def UniteCommunication;

        item def Identifiants;
        item def DemandeTest;
        item def Mesures;
        item def ResultatDiagnostic;
        item def RapportDiagnostic;
    }

    package sequences {
        private import triDechets::parts::*;

        // S1 : identifiants refusés
        occurrence verifierEtatSystemeS1 {
            part interfaceOperateur : InterfaceOperateur;
            part automate : Automate;
            part dialogueConnexion : DialogueConnexion;
            part messageRefus : Message;

            message verifierEtatSysteme from interfaceOperateur to automate;
            message afficherConnexion from automate to dialogueConnexion;
            message identifiants of Identifiants from dialogueConnexion to automate;
            message afficherRefus from automate to messageRefus;
            message retourRefus from messageRefus to automate;
            message retourOperateur from automate to interfaceOperateur;
        }

        // S2 : diagnostic sans rapport
        occurrence verifierEtatSystemeS2 {
            part interfaceOperateur : InterfaceOperateur;
            part automate : Automate;
            part dialogueConnexion : DialogueConnexion;
            part menuDiagnostic : MenuDiagnostic;
            part capteurs : Capteurs;
            part ecranResultats : EcranResultats;

            message verifierEtatSysteme from interfaceOperateur to automate;
            message afficherConnexion from automate to dialogueConnexion;
            message identifiants of Identifiants from dialogueConnexion to automate;
            message afficherMenu from automate to menuDiagnostic;
            message test of DemandeTest from menuDiagnostic to automate;
            message diagnostiquer from automate to capteurs;
            message mesures of Mesures from capteurs to automate;
            message afficherResultats of ResultatDiagnostic from automate to ecranResultats;
            message retourResultats from ecranResultats to automate;
            message retourOperateur from automate to interfaceOperateur;
        }

        // S3 : diagnostic + envoi du rapport
        occurrence verifierEtatSystemeS3 {
            part interfaceOperateur : InterfaceOperateur;
            part automate : Automate;
            part dialogueConnexion : DialogueConnexion;
            part menuDiagnostic : MenuDiagnostic;
            part capteurs : Capteurs;
            part ecranResultats : EcranResultats;
            part uniteCommunication : UniteCommunication;

            message verifierEtatSysteme from interfaceOperateur to automate;
            message afficherConnexion from automate to dialogueConnexion;
            message identifiants of Identifiants from dialogueConnexion to automate;
            message afficherMenu from automate to menuDiagnostic;
            message test of DemandeTest from menuDiagnostic to automate;
            message diagnostiquer from automate to capteurs;
            message mesures of Mesures from capteurs to automate;
            message afficherResultats of ResultatDiagnostic from automate to ecranResultats;
            message retourResultats from ecranResultats to automate;
            message envoyerRapport of RapportDiagnostic from automate to uniteCommunication;
            message accuseReception from uniteCommunication to automate;
            message retourOperateur from automate to interfaceOperateur;
        }
    }
}