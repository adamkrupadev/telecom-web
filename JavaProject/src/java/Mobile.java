/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


public class Mobile extends Ligne {
    private String type;
    private String reseau;
    private String payement;
    private int numService;

    public Mobile(String type, String reseau, String payement, int numService, int num, int matricule) {
        super(num, matricule);
        this.type = type;
        this.reseau = reseau;
        this.payement = payement;
        this.numService = numService;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getReseau() {
        return reseau;
    }

    public void setReseau(String reseau) {
        this.reseau = reseau;
    }

    public String getPayement() {
        return payement;
    }

    public void setPayement(String payement) {
        this.payement = payement;
    }

    public int getNumService() {
        return numService;
    }

    public void setNumService(int numService) {
        this.numService = numService;
    }
    
}
