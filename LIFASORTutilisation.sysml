package triDechets {
    package parts {
        part def LIFASORT {
            part conteneurs : ConteneurDechets[3];
        }

        part def Employe;
        part def AgentEntretien;
        part def Technicien;
        part def ResponsableDeLigne;

        part def Convoyeur;
        part def ReseauElectrique;
        part def Supervision;
        part def BennesRecyclage;
        part def ConteneurDechets;
    }

    package useCases {

        private import triDechets::parts::*;

        use case trierDechet {
            subject lifasort : LIFASORT;
            actor employe : Employe;
        }

        use case viderBacs {
            subject lifasort : LIFASORT;
            actor agentEntretien : AgentEntretien;
        }

        use case nettoyerPoubelle {
            subject lifasort : LIFASORT;
            actor agentEntretien : AgentEntretien;
        }

        use case verifierEtatSysteme {
            subject lifasort : LIFASORT;
            actor technicien : Technicien;
        }

        use case configurerSysteme {
            subject lifasort : LIFASORT;
            actor responsableDeLigne : ResponsableDeLigne;
        }
    }
}
