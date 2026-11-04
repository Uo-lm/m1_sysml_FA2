
package lifasort {
    private import lifasort::parts::*;

    package sequences {
        occurrence trierDechetsS3 {
            part capteurPresence: CapteurPresence;
            part controleur: ControleurCentral;
            part capteurOptique: CapteurOptique;
            part mecanismeTri: MecanismeTri;
            part compacteur: Compacteur;
            part capteurRemplissage: CapteurRemplissage;
            part supervision: Supervision;

            message dechetDetecte from capteurPresence to controleur;
            message identifier from controleur to capteurOptique;
            message categorie of CategorieDechet from capteurOptique to controleur;
            message orienter of CategorieDechet from controleur to mecanismeTri;
            message evacuationConfirmee from mecanismeTri to controleur;
            message comprimer from controleur to compacteur;
            message compressionTerminee from compacteur to controleur;
            message controler from controleur to capteurRemplissage;
            message niveau of NiveauRemplissage from capteurRemplissage to controleur;
            message alerteRemplissage of Alerte from controleur to supervision;
        }
    }
}
