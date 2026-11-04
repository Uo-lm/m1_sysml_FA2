
package PoubelleLIFASORT {

    private import ScalarValues::Boolean;

    action trierDechets {

        attribute dechetDetecte : Boolean;
        attribute estCarton : Boolean;
        attribute estMetal : Boolean;
        attribute estAutre : Boolean;
        attribute blocageDetecte : Boolean;
        attribute absenceBlocage : Boolean;
        attribute compartimentPlein : Boolean;
        attribute compartimentNonPlein : Boolean;

        action acheminerDechet;
        action identifierCategorie;
        action orienterVersCarton;
        action orienterVersMetal;
        action orienterVersAutres;
        action verifierEvacuation;
        action comprimerDechet;
        action controlerRemplissage;
        action transmettreAlerteBlocage;
        action transmettreAlerteRemplissage;

        decide decideCategorie;
        decide decideBlocage;
        decide decideRemplissage;
        merge mergeTri;

        first start;

        succession start if dechetDetecte
            then acheminerDechet;

        then identifierCategorie;
        then decideCategorie;

        if estCarton then orienterVersCarton;
        if estMetal then orienterVersMetal;
        if estAutre then orienterVersAutres;

        succession orienterVersCarton then mergeTri;
        succession orienterVersMetal then mergeTri;
        succession orienterVersAutres then mergeTri;

        then verifierEvacuation;
        then decideBlocage;

        if blocageDetecte
            then transmettreAlerteBlocage;

        if absenceBlocage
            then comprimerDechet;

        succession transmettreAlerteBlocage
            then done;

        succession comprimerDechet
            then controlerRemplissage;

        then decideRemplissage;

        if compartimentPlein
            then transmettreAlerteRemplissage;

        if compartimentNonPlein
            then done;

        succession transmettreAlerteRemplissage
            then done;
    }
}
