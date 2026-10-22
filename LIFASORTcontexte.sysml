<<<<<<< HEAD
=======

package lifasort {
>>>>>>> e30c4263dc256d5a25dffd8b5eda1df5731b2f82

package triDechets {

<<<<<<< HEAD
=======
    /* Definition des acteurs */
    part def Employe;
    part def AgentCollecte;
    part def TechnicienMaintenance;
    part def ResponsableUsine;

    /* Definition du systeme */
    part def SystemeLIFASORT;

    /* Elements exterieurs */
    part def Supervision;
    part def ReseauElectrique;
    part def Dechets;

    /* Diagramme de contexte */
>>>>>>> e30c4263dc256d5a25dffd8b5eda1df5731b2f82
    part def Contexte {

        part LIFASORT;
        part utilisateur;
        part agentEntretien;
        part dechet;
        part reseauElectrique;

        flow utilise from utilisateur to LIFASORT;
        flow entretient from agentEntretien to LIFASORT;
        flow trie from dechet to LIFASORT;
        flow alimente from reseauElectrique to LIFASORT;

<<<<<<< HEAD
=======
        part supervision: Supervision;
        part reseauElectrique: ReseauElectrique;
        part dechets: Dechets;

        flow utilise from employe to lifasort;
        flow vide from agentCollecte to lifasort;
        flow intervient from technicien to lifasort;
        flow configure from responsable to lifasort;
        flow alimente from reseauElectrique to lifasort;
        flow trie from dechets to lifasort;
        flow transmetAlertes from lifasort to supervision;
>>>>>>> e30c4263dc256d5a25dffd8b5eda1df5731b2f82
    }
}
