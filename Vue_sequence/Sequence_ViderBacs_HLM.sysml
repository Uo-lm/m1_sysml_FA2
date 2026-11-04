
package VueSequenceViderBacs {

    part def AgentEntretien;
    part def Poubelle;
    part def EnsembleBacs;

    occurrence def SequenceViderBacs {

        part agent : AgentEntretien {
            event occurrence demandeOuverture;
            then event occurrence retireBacs;
            then event occurrence videContenu;
            then event occurrence remetBacs;
            then event occurrence demandeFermeture;
        }

        part poubelle : Poubelle {
            event occurrence accesOuvert;
            then event occurrence accesFerme;
        }

        part bacs : EnsembleBacs {
            event occurrence bacsRetires;
            then event occurrence contenuVide;
            then event occurrence bacsRemis;
        }

        message ouvrirAcces
            from agent.demandeOuverture
            to poubelle.accesOuvert;

        message retirerBacs
            from agent.retireBacs
            to bacs.bacsRetires;

        message viderContenu
            from agent.videContenu
            to bacs.contenuVide;

        message remettreBacs
            from agent.remetBacs
            to bacs.bacsRemis;

        message fermerAcces
            from agent.demandeFermeture
            to poubelle.accesFerme;

        first ouvrirAcces then retirerBacs;
        first retirerBacs then viderContenu;
        first viderContenu then remettreBacs;
        first remettreBacs then fermerAcces;

    }
}
