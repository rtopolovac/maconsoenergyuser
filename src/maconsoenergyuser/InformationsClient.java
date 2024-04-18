/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package maconsoenergyuser;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.awt.*;
import java.sql.ResultSet;

/**
 *
 * @author you-users
 */
public class InformationsClient {
    private String nom;
    private String adresse;
    private String code_postale;
    private int id_foyer;
    private BDD maConsoEnergyBDD;
    
    public void setNom(String n_nom){ nom = n_nom; }
    public String getNom(){ return nom;  }
    
    public void setAdresse(String n_adresse){ adresse = n_adresse; }
    public String getAdresse(){ return adresse;  }
    
    public void setCodePostale(String n_code_postale){ code_postale = n_code_postale; }
    public String getCodePostale(){ return code_postale;  }
    
    public void LoginValide ( int id_entrant, BDD maConsoEnergyBDD_new){
        // Stockage de l'ID FOYER
        id_foyer = id_entrant;
        maConsoEnergyBDD = maConsoEnergyBDD_new;
        
        String SQLreq = "SELECT * FROM foyer WHERE Id_Foyer ="+id_entrant+" ;";
        
        if(maConsoEnergyBDD.RequeteSQL(SQLreq)){
            ResultSet resultat;
            resultat = maConsoEnergyBDD.getResultSet();
            try{
                    while (resultat.next()){
                        // Stockage des infos de l'utilisateur
                        code_postale = resultat.getString("code_postal");
                        adresse = resultat.getString("Adresse");
                        nom = resultat.getString("Nom_Foyer");

                        System.out.println("Code postale:" + code_postale);
                        System.out.println("Adresse:" + adresse);
                        System.out.println("Nom:" + nom);
                        }
            }catch (SQLException e) {
                e.printStackTrace();
            }
        } 
    }
    
    public void UpdateClassInfoClient(String nom, String adresse, String code_postale){
        setNom(nom);
        setAdresse(adresse);
        setCodePostale(code_postale);
    }
    public void UpdateBDDInfoClient(){
        String SQLreq = "UPDATE foyer SET Adresse = '"+ adresse +"', Nom_Foyer = '"+ nom +"', code_postal = '"+ code_postale +"' WHERE Id_Foyer = "+id_foyer+";";
        
        maConsoEnergyBDD.UpdateSQL(SQLreq);
    
    }
}
