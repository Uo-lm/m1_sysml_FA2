
package VueActionsNettoyerPoubelle {

    action nettoyerPoubelle {

        action mettreHorsService;
        action ouvrirAcces;
        action nettoyerZoneReception;
        action nettoyerCapteurs;
        action secherSurfaces;
        action fermerAcces;
        action remettreEnService;

        first start then mettreHorsService;
        first mettreHorsService then ouvrirAcces;
        first ouvrirAcces then nettoyerZoneReception;
        first nettoyerZoneReception then nettoyerCapteurs;
        first nettoyerCapteurs then secherSurfaces;
        first secherSurfaces then fermerAcces;
        first fermerAcces then remettreEnService;
        first remettreEnService then done;

    }
}
