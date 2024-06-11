/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package maconsoenergyuser;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.swing.JComboBox;

/**
 *
 * @author you-users
 */
public class TypeEquipement extends AppUser {
    private BDD maConsoEnergyBDD;
    private String id_type_equipement;
    private HashMap<String, Integer> typeConsoMap = new HashMap<>();
    private JComboBox<String> jComboBox1; // Déclarez le JComboBox

    // Constructeur de la classe
    public TypeEquipement() {
        jComboBox1 = new JComboBox<>(); // Initialisez le JComboBox
    }
    public void SelectEquipement(){
        ResultSet resultSet;
        if (maConsoEnergyBDD.RequeteSQL("SELECT * FROM type_equipement"))
        {
            resultSet = maConsoEnergyBDD.getResultSet();
            try { 
                while (resultSet.next()) {
                        // Recup toutes les données de la colonne Nom_Conso de la table type_conso
                        jComboBox1.addItem(resultSet.getString("nom"));
                        
                        // Associe l'Item à la clé du type de conso
                        typeConsoMap.put(resultSet.getString("nom"), resultSet.getInt("id_type_equipement"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    
    }
    public void SelectEquipementClient(){
        ResultSet resultSet;
        if (maConsoEnergyBDD.RequeteSQL("SELECT type_equipement.id_type_equipement, Id_Foyer, nom FROM type_equipement join foyer on type_equipement.id_type_equipement = foyer.id_type_equipement WHERE id_foyer ="+ id_foyer +";"))
        {
            resultSet = maConsoEnergyBDD.getResultSet();
            try { 
                while (resultSet.next()) {
                        // Recup toutes les données de la colonne Nom_Conso de la table type_conso
                        jComboBox1.addItem(resultSet.getString("nom"));
                        
                        // Associe l'Item à la clé du type de conso
                        typeConsoMap.put(resultSet.getString("nom"), resultSet.getInt("id_type_equipement"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
