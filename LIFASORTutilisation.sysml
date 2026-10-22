
package triDechets {

    package parts {
        part def Utilisateur;
        part def AgentEntretien;
        part def Employer;
        part def Responsabledeligne;

    }

    package useCases {

        private import triDechets::parts::*;

        actor utilisateur : Utilisateur;
        actor agent : AgentEntretien;
        actor agent : employer;
        actor agent : responsabledeligne;

        use case trierDechet {
            ref actor employer;
        }

        use case viderBacs {
            ref actor agent;
        }

        use case nettoyerPoubelle {
            ref actor agent;
        }

        use case verifierEtatSysteme {
            ref actor agent;
        }
    }
}
