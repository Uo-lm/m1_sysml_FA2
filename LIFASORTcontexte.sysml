
package triDechets {

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

    }
}