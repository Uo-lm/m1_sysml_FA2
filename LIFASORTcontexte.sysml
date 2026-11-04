
package triDechets {

    part def Contexte {

        part LIFASORT;
        part empolye;
        part agentEntretien;
        part convoyeur;
        part reseauElectrique;
        part supervision;
        part responsableduligne;
        part bacsDeTri;
        flow utilise from empolye to LIFASORT;
        flow envoiedechets from convoyeur  to LIFASORT;
        flow alimente from reseauElectrique to LIFASORT;
        flow recevoiralertes from LIFASORT to supervision;
        flow configure from responsableduligne to LIFASORT;
        flow sortDechetsTries from LIFASORT to bacsDeTri;
        flow collecteDechetsTries from agentEntretien to LIFASORT;
        
    }
}