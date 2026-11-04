
package VueActionsViderBacs {

    action viderBacs {

        action ouvrirAcces;
        action retirerBacs;
        action viderContenu;
        action remettreBacs;
        action fermerAcces;

        first start then ouvrirAcces;
        first ouvrirAcces then retirerBacs;
        first retirerBacs then viderContenu;
        first viderContenu then remettreBacs;
        first remettreBacs then fermerAcces;
        first fermerAcces then done;

    }
}
