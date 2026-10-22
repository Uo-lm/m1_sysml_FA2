
package triDechets {

    part def Contexte {

        part LIFASORT;
        part empolye;
        part agentEntretien;
        part dechet;
        part reseauElectrique;
        part supervision;
        part responsableduligne;
        flow utilise from empolye to LIFASORT;
        flow entretient from agentEntretien to LIFASORT;
        flow tries from dechet to LIFASORT;
        flow alimente from reseauElectrique to LIFASORT;
        flow recevoiralertes from LIFASORT to supervision;
        flow configure from responsableduligne to LIFASORT;
        
        
    }
}