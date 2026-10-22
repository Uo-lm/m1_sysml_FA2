
package triDechets {

    package parts {
        part def Technicien;
        part def AgentEntretien;
        part def Employer;
        part def Responsabledeligne;

    }

    package useCases {

        private import triDechets::parts::*;

        actor agententretien : AgentEntretien;
        actor employer: Employer;
        actor responsable : Responsabledeligne;
        actor technicien: Technicien;

        use case trierDechet {
            ref actor employer;
        }

        use case viderBacs {
            ref actor agententretien;
        }

        use case nettoyerPoubelle {
            ref actor agententretien;
        }
        use case verifierEtatSysteme {
            ref actor technicien;
        }
        
        use case confirguerSysteme {
            ref actor responsable;
        }
    }
}
