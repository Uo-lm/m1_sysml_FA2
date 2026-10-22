package PoubelleLIFASORT {

    part def Chassis;
    part def Enveloppe;
    part def TrappeEntree;
    part def ConvoyeurEntree;

    part def CapteurOptique;
    part def UniteTraitement;
    part def MecanismeOrientation;

    part def CompartimentCarton;
    part def CompartimentMetal;
    part def CompartimentAutresDechets;
    part def CloisonsReglables;

    part def CapteurMoteur;
    part def DetecteurBlocage;
    part def ArretAutomatique;
    part def AlerteOperateur;

    part def Piston;
    part def Actionneur;
    part def CapteurPosition;

    part def CapteursNiveau;
    part def UniteCommunication;
    part def InterfaceAlerte;

    part def Automate;
    part def ModuleEntreesSorties;
    part def Alimentation;
    part def InterfaceOperateur;

    part def StructurePrincipale {
        part chassis : Chassis;
        part enveloppe : Enveloppe;
        part trappe : TrappeEntree;
        part convoyeur : ConvoyeurEntree;
    }

    part def SystemeDeTri {
        part capteur : CapteurOptique;
        part traitement : UniteTraitement;
        part orientation : MecanismeOrientation;
    }

    part def Compartiments {
        part carton : CompartimentCarton;
        part metal : CompartimentMetal;
        part autres : CompartimentAutresDechets;
        part cloisons : CloisonsReglables;
    }

    part def SystemeAntiBlocage {
        part capteurMoteur : CapteurMoteur;
        part detection : DetecteurBlocage;
        part arret : ArretAutomatique;
        part alerte : AlerteOperateur;
    }

    part def SystemeDeCompactage {
        part piston : Piston;
        part actionneur : Actionneur;
        part position : CapteurPosition;
    }

    part def SurveillanceRemplissage {
        part capteurs : CapteursNiveau;
        part communication : UniteCommunication;
    }

    part def SystemeDeCommande {
        part automate : Automate;
        part entreesSorties : ModuleEntreesSorties;
        part alimentation : Alimentation;
    }

    part def PoubelleAutomatisee {
        part structure : StructurePrincipale;
        part tri : SystemeDeTri;
        part stockage : Compartiments;
        part antiBlocage : SystemeAntiBlocage;
        part compactage : SystemeDeCompactage;
        part surveillance : SurveillanceRemplissage;
        part commande : SystemeDeCommande;
        part structurePrincipale : StructurePrincipale;
        
    }

 
}