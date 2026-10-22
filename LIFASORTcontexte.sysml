
package triDechets {

    part def Contexte {

        part LIFASORT;
        part empolye;
        part agentEntretien;
        part dechets;
        part reseauElectrique;
        part supervision;
        part responsableduligne;
        flow utilise from empolye to LIFASORT;
        flow entretient from agentEntretien to LIFASORT;
        flow tries from LIFASORT to dechets;
        flow alimente from reseauElectrique to LIFASORT;
        flow recevoiralertes from LIFASORT to supervision;
        flow configure from responsableduligne to LIFASORT;
        
        
    }
}