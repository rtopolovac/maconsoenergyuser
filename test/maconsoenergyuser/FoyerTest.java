/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package maconsoenergyuser;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author r.topolovac
 */
public class FoyerTest {
    
    /**
     * Test of CP_isValid method, of class Foyer.
     */
    @Test
    public void testCP_isValid() {
        System.out.println("CP_isValid");
        Foyer instance = new Foyer();
        assertTrue(instance.CP_isValid("75018"));
        fail("KO");
    }
    
}
