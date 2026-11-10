
package MatriceAllocationLIFASORT {

    part def StructurePrincipale;
    part def SystemeDeTri;
    part def StockageAdaptable;
    part def SystemeAntiBlocage;
    part def SystemeDeCompactage;
    part def SurveillanceRemplissage;
    part def SystemeDeCommande;
    part def ConteneurDechets;

    part structure : StructurePrincipale;
    part tri : SystemeDeTri;
    part stockage : StockageAdaptable;
    part antiBlocage : SystemeAntiBlocage;
    part compactage : SystemeDeCompactage;
    part surveillance : SurveillanceRemplissage;
    part commande : SystemeDeCommande;
    part conteneurs : ConteneurDechets[3];

    action triAutomatique;
    action viderBacs;
    action nettoyerPoubelle;
    action verifierEtatSysteme;
    action configurerSysteme;
    action compactageDechets;
    action surveillanceRemplissage;
    action protectionAntiBlocage;
    action depotDechet;
    action receptionConvoyeur;
    action interfaceOperateur;
    action cloisonsReglables;
    action accesCompartiments;
    action compatibiliteElectrique;
    action communicationReseau;
    action envoiAlertes;
    action tauxTri;
    action tempsTri;
    action tauxCompactage;
    action seuilAlerteRemplissage;
    action tempsArretBlocage;
    action capaciteCompartiment;
    action coutRevient;
    action encombrement;
    action consommationElectrique;
    action niveauSonore;
    action securiteUtilisateur;
    action conteneurDechets;
    action capaciteConteneur;
    action accesConteneur;

    allocate triAutomatique to tri;
    allocate triAutomatique to commande;
    allocate triAutomatique to stockage;

    allocate viderBacs to stockage;
    allocate viderBacs to structure;

    allocate nettoyerPoubelle to structure;
    allocate nettoyerPoubelle to stockage;

    allocate verifierEtatSysteme to commande;
    allocate verifierEtatSysteme to surveillance;
    allocate verifierEtatSysteme to antiBlocage;

    allocate configurerSysteme to commande;

    allocate compactageDechets to compactage;
    allocate compactageDechets to commande;

    allocate surveillanceRemplissage to surveillance;
    allocate surveillanceRemplissage to commande;

    allocate protectionAntiBlocage to antiBlocage;
    allocate protectionAntiBlocage to commande;

    allocate depotDechet to structure;

    allocate receptionConvoyeur to structure;

    allocate interfaceOperateur to commande;

    allocate cloisonsReglables to stockage;

    allocate accesCompartiments to structure;
    allocate accesCompartiments to stockage;

    allocate compatibiliteElectrique to commande;

    allocate communicationReseau to surveillance;
    allocate communicationReseau to commande;

    allocate envoiAlertes to surveillance;
    allocate envoiAlertes to antiBlocage;
    allocate envoiAlertes to commande;

    allocate tauxTri to tri;
    allocate tauxTri to commande;
    allocate tempsTri to tri;
    allocate tempsTri to commande;
    allocate tauxCompactage to compactage;
    allocate seuilAlerteRemplissage to surveillance;
    allocate tempsArretBlocage to antiBlocage;
    allocate capaciteCompartiment to stockage;
    allocate coutRevient to structure;
    allocate encombrement to structure;
    allocate consommationElectrique to commande;
    allocate niveauSonore to structure;
    allocate securiteUtilisateur to structure;
    allocate conteneurDechets to conteneurs;
    allocate capaciteConteneur to conteneurs;
    allocate accesConteneur to conteneurs;

}
