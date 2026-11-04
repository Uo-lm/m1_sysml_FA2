
package lifasort {
    private import lifasort::parts::*;

    package sequences {
        occurrence trierDechetsS2 {
            part capteurPresence: CapteurPresence;
            part controleur: ControleurCentral;
            part capteurOptique: CapteurOptique;
            part mecanismeTri: MecanismeTri;
            part supervision: Supervision;

            message dechetDetecte from capteurPresence to controleur;
            message identifier from controleur to capteurOptique;
            message categorie of CategorieDechet from capteurOptique to controleur;
            message orienter of CategorieDechet from controleur to mecanismeTri;
            message blocageDetecte from mecanismeTri to controleur;
            message alerteBlocage of Alerte from controleur to supervision;
        }
    }
}
