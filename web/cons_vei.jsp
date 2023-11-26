<%-- 
    Document   : cons_vei.jsp
    Created on : 18 de nov. de 2023, 13:59:30
    Author     : Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controle.cliente"%>
<%@page import="java.text.*" import="java.lang.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controle de Veiculos</title>
    </head>
    <body>
        <h1>Clientes</h1>
        
        
        <%
            // Recebendo dados
            
            String codigo = request.getParameter("codigo");                      
            
            //Consultar
            try{
                Class.forName("com.mysql.jdbc.Driver"); //registra            
                Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost:8080/trabalhom2/", "root", ""); // abre Conn
                Statement stmt = conexao.createStatement(); //cria uma instrução
                String sql = "SELECT * FROM clientes WHERE codigo = " + codigo; //defin instr. SQL
                ResultSet rs = stmt.executeQuery(sql); // exec. Query.
                
                //Saída
                while (rs.next()){
                    out.println("<br><br><b> Registro - Veiculo </b>");
                    out.println("<br> Codigo: " + rs.getString("codigo"));
                    out.println("<br> Modelo: " + rs.getString("modelo"));
                    out.println("<br> Placa: " + rs.getString("placa"));
                    out.println("<br> Ano: " + rs.getString("ano"));
                    out.println("<br> Cor: " + rs.getString("cor"));
                    out.println("<br> Fabricante: " + rs.getString("fabricante"));
                    out.println("<br> Diaria: " + rs.getString("diaria"));
                }             
                               
                conexao.close(); //fecha                
            }
            catch(Exception ex){
                ex.printStackTrace();
                out.println("Erro: " + ex.toString());
            }
        %>
        
    </body>
</html>
