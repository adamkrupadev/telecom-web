/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


public class Fixe extends Ligne {
    private int localisation;
    private int encombrement;

    public Fixe(int localisation, int encombrement, int num, int matricule) {
        super(num, matricule);
        this.localisation = localisation;
        this.encombrement = encombrement;
    }

    public int getLocalisation() {
        return localisation;
    }

    public void setLocalisation(int localisation) {
        this.localisation = localisation;
    }

    public int getEncombrement() {
        return encombrement;
    }

    public void setEncombrement(int encombrement) {
        this.encombrement = encombrement;
    }
    
  
    
    
}
