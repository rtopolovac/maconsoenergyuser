/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package maconsoenergyuser;

/**
 *
 * @author r.topolovac
 */
public class Foyer {
    private int ID;
    private String CP="75018";
    
    public boolean CP_isValid(String newCP){
        // Seulement 5 chiffres 
        String regex="\\d{5}";
        
        if (!newCP.isEmpty())
            if (newCP.matches(regex)) return true;
        
        return false;
    }   
    
}
