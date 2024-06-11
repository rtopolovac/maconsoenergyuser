/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package maconsoenergyuser;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.awt.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author you-users
 */
public class InformationsClient {
    private String nom;
    private String adresse;
    private String code_postale;
    private int id_foyer;
    private int quantite;
    private int id_type_conso;
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
    
    
    public void setQuantite(int n_quantite ){ quantite = n_quantite; }
    public int getQuantite(){ return quantite;  }
    
    public void setIdTypeConso(int n_id_type_conso){ id_type_conso = n_id_type_conso; }
    public int getIdTypeConso(){ return id_type_conso;  }
    
    public void setIdFoyer(int n_id_foyer){ id_foyer = n_id_foyer; }
    public int getIdFoyer(){ return id_foyer;  }
    
    public void InsertClassQuantiteCLient(int quantite, int type_conso, int foyer){
            setQuantite(quantite);
            setIdTypeConso(type_conso);
            setIdFoyer(foyer);
            }
    
    public void InsertQuantiteClient(){
        String SQLreq = "INSERT INTO consommation (Quantite_KWH, Id_Type_Conso, Id_Foyer) VALUES ('"+quantite+"', '"+id_type_conso+"', '"+id_foyer+"')";
        
        maConsoEnergyBDD.UpdateSQL(SQLreq);
    }
    
    public List<String[]> GetinformationsQuantite() {
        List<String[]> data = new ArrayList<>();
        try {
                ResultSet table = maConsoEnergyBDD.getResultSet();

                while (table.next()) {
                    String id = table.getString("id");
                    String quantity = table.getString("Quantite_KWH");
                    String Id_Type_Conso = table.getString("Id_Type_Conso");
                    data.add(new String[]{id, quantity, Id_Type_Conso});
                }
                System.out.println("récupération réussi");
            } catch (SQLException e) {
            }
        return data;
    }
}
