/**
 * 
 */
package compilador;
import java.io.FileInputStream;



/**
 * @author jose
 *
 */
public class Compilador {
    /**
	     * @param args the command line arguments
	     */
	    public static void main(String[] args) throws Exception {
	        // TODO code application logic here
	        System.out.println("-------------------------------");
	        new Sintactico(new Scanner(new FileInputStream("prueba.txt"))).parse();
	    }
	}
