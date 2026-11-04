
package VueSequenceNettoyerPoubelle {

    part def AgentEntretien;
    part def Poubelle;
    part def ZoneReception;
    part def Capteurs;

    occurrence def SequenceNettoyerPoubelle {

        part agent : AgentEntretien {
            event occurrence demandeArret;
            then event occurrence demandeOuverture;
            then event occurrence nettoieZone;
            then event occurrence nettoieCapteurs;
            then event occurrence secheSurfaces;
            then event occurrence demandeFermeture;
            then event occurrence demandeRedemarrage;
        }

        part poubelle : Poubelle {
            event occurrence systemeArrete;
            then event occurrence accesOuvert;
            then event occurrence surfacesSeches;
            then event occurrence accesFerme;
            then event occurrence systemeDemarre;
        }

        part zone : ZoneReception {
            event occurrence zoneNettoyee;
        }

        part capteurs : Capteurs {
            event occurrence capteursNettoyes;
        }

        message arreterSysteme
            from agent.demandeArret
            to poubelle.systemeArrete;

        message ouvrirAcces
            from agent.demandeOuverture
            to poubelle.accesOuvert;

        message nettoyerZoneReception
            from agent.nettoieZone
            to zone.zoneNettoyee;

        message nettoyerCapteurs
            from agent.nettoieCapteurs
            to capteurs.capteursNettoyes;

        message secherSurfaces
            from agent.secheSurfaces
            to poubelle.surfacesSeches;

        message fermerAcces
            from agent.demandeFermeture
            to poubelle.accesFerme;

        message remettreEnService
            from agent.demandeRedemarrage
            to poubelle.systemeDemarre;

        first arreterSysteme then ouvrirAcces;
        first ouvrirAcces then nettoyerZoneReception;
        first nettoyerZoneReception then nettoyerCapteurs;
        first nettoyerCapteurs then secherSurfaces;
        first secherSurfaces then fermerAcces;
        first fermerAcces then remettreEnService;

    }
}
