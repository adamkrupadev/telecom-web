/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.Date;

public class Facture {
    private static int idFacture;
    private int numLigne;
    private int numService;
    private Date date;
    private int nbrUniteConsom;
    private float prixTotal;
    private int delais;
    private int payer = 0;
    
    public Facture(){ this.idFacture++; };

    public Facture(int numLigne, int numService, Date date, int nbrUniteConsom, float prixTotal, int delais) {
        date.getDate();
        this.numLigne = numLigne;
        this.numService = numService;
       
       
        this.nbrUniteConsom = nbrUniteConsom;
        this.prixTotal = prixTotal;
        this.delais = delais;
    }
    
    
    public int getidFacture() { return(this.idFacture);}

    public int getPayer() {
        return payer;
    }

    public void setPayer(int payer) {
        this.payer = payer;
    }

   

    public int getNumLigne() {
        return numLigne;
    }

    public void setNumLigne(int numLigne) {
        this.numLigne = numLigne;
    }

    public int getNumService() {
        return numService;
    }

    public void setNumService(int numService) {
        this.numService = numService;
    }
    

    public int getNbrUniteConsom() {
        return nbrUniteConsom;
    }

    public void setNbrUniteConsom(int nbrUniteConsom) {
        this.nbrUniteConsom = nbrUniteConsom;
    }

    public float getPrixTotal() {
        return prixTotal;
    }

    public void setPrixTotal(float prixTotal) {
        this.prixTotal = prixTotal;
    }

    public int getDelais() {
        return delais;
    }

    public void setDelais(int delais) {
        this.delais = delais;
    }
    
    
}
