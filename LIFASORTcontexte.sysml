package triDechets {

    package contexte {

        private import triDechets::parts::*;

        part def Contexte {
            part lifasort : LIFASORT;
            part employe : Employe;
            part agentEntretien : AgentEntretien;
            part technicien : Technicien;
            part responsableDeLigne : ResponsableDeLigne;
            part convoyeur : Convoyeur;
            part reseauElectrique : ReseauElectrique;
            part supervision : Supervision;
            part bennesRecyclage : BennesRecyclage;
            flow deposeDechet from employe to lifasort;
            flow envoiDechets from convoyeur to lifasort;
            flow alimente from reseauElectrique to lifasort;
            flow envoiAlertes from lifasort to supervision;
            flow configure from responsableDeLigne to lifasort;
            flow verifieEtat from technicien to lifasort;
            flow collecteDechetsTries from agentEntretien to lifasort;
            flow deposeDechetsTries from agentEntretien to bennesRecyclage;
        }
    }
}