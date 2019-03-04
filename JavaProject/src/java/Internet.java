/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


public class Internet extends Service {
    private String ISP;

    public Internet(String ISP, int numService, String description, float cout) {
        super(numService, description, cout);
        this.ISP = ISP;
    }

    public String getISP() {
        return ISP;
    }

    public void setISP(String ISP) {
        this.ISP = ISP;
    }
    
}
