/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


public class Service {
    private int numService;
    private String description;
    private float cout;

    public Service(int numService, String description, float cout) {
        this.numService = numService;
        this.description = description;
        this.cout = cout;
    }

    public int getNumService() {
        return numService;
    }

    public void setNumService(int numService) {
        this.numService = numService;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getCout() {
        return cout;
    }

    public void setCout(float cout) {
        this.cout = cout;
    }
    
    
}
