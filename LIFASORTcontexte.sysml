
package lifasort {

    private import ScalarValues::Boolean;

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
    part def Contexte {

        part employe: Employe;
        part agentCollecte: AgentCollecte;
        part technicien: TechnicienMaintenance;
        part responsable: ResponsableUsine;

        part lifasort: SystemeLIFASORT;

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
    }
}
