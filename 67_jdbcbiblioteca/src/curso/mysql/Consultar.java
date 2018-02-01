/**
 * 
 */
package curso.mysql;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Curson mañana
 *
 */
public class Consultar {

	/**
	 * @param args
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca", "root", null);
		
		System.out.println("------Peticion STATEMENT------");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("select * from libros");
		while (rs.next()) {
			System.out.println("ID: " + rs.getInt("id"));
			System.out.println("Titulo: " + rs.getString("titulo"));
			System.out.println("Autor: " + rs.getString("autor"));
			System.out.println("Precio " + rs.getFloat("precio") + "$");
			System.out.println("Fecha " + rs.getDate("fechaPublicacion"));
		}

//		int insertar = st.executeUpdate(
//				"insert into libros (id, titulo, autor, precio, fechaPublicacion) values ('3', 'Fabulas', 'Hermanos Grimm', '8.93', '1980-05-23')");
//		System.out.println("------Metodo EXECUTE-UPDATE------");
//		System.out.println("Fila insertada " + insertar);
//
//		int modificar = st.executeUpdate(
//				"update libros set autor = 'Miguel de Cervantes', precio = '22.34', fechaPublicacion = '1920-12-16' where titulo = 'El quijote'");
//		System.out.println("Fila modificada " + modificar);
//
//		int eliminar = st.executeUpdate("delete from libros where id = '4'");
//		System.out.println("Fila eliminada " + eliminar);

		System.out.println("------Peticion PREPARED-STATEMENT------");
		System.out.println("---------Por titulo--------");
		PreparedStatement pstmt = conn.prepareStatement("select * from libros where titulo = ?");
		pstmt.setString(1, "El quijote");
		ResultSet rs1 = pstmt.executeQuery();
		while (rs1.next()) {
			System.out.println("ID: " + rs1.getInt("id"));
			System.out.println("Titulo: " + rs1.getString("titulo"));
			System.out.println("Autor: " + rs1.getString("autor"));
			System.out.println("Precio " + rs1.getFloat("precio") + "$");
			System.out.println("Fecha " + rs1.getDate("fechaPublicacion"));
		}

		System.out.println("------Peticion CALLABLE-STATEMENT------");
		CallableStatement cstmt = conn.prepareCall("{call listaLibros()}");
		ResultSet rs2 = cstmt.executeQuery();
		while (rs2.next()) {
			System.out.println("ID: " + rs2.getInt("id"));
			System.out.println("Titulo: " + rs2.getString("titulo"));
			System.out.println("Autor: " + rs2.getString("autor"));
			System.out.println("Precio " + rs2.getFloat("precio") + "$");
			System.out.println("Fecha " + rs2.getDate("fechaPublicacion"));
		}
		
		System.out.println("---------Por Autor--------");
		CallableStatement cstmt1 = conn.prepareCall("{call listaLibrosPorAutor(?)}");
		cstmt1.setString(1, "Hermanos Grimm");
		ResultSet rs3 = cstmt1.executeQuery();
		while (rs3.next()) {
			System.out.println("ID: " + rs3.getInt("id"));
			System.out.println("Titulo: " + rs3.getString("titulo"));
			System.out.println("Autor: " + rs3.getString("autor"));
			System.out.println("Precio " + rs3.getFloat("precio") + "$");
			System.out.println("Fecha " + rs3.getDate("fechaPublicacion"));
		}
	}

}
