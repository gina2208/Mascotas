package controlador;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Iterator;
import modelo.*;

@WebServlet(name = "servletRegistro", urlPatterns = {"/servletRegistro"})
public class servletRegistro extends HttpServlet {

    ArrayList veterinaria = new ArrayList();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String tipo = request.getParameter("tipo");
        
        if (tipo.equals("canino")) {
            String nombreC = request.getParameter("nombreC");
            String razaC = request.getParameter("razaC");
            String colorC = request.getParameter("colorC");
            int edadC = Integer.parseInt(request.getParameter("edadC"));
            int nivelE = Integer.parseInt(request.getParameter("nivelE"));
            Caninos canino = new Caninos(nivelE, nombreC, razaC, colorC, edadC);
            veterinaria.add(canino);
        } else {
            if (tipo.equals("felino")) {
                String nombreF = request.getParameter("nombreF");
                String razaF = request.getParameter("razaF");
                String colorF = request.getParameter("colorF");
                int edadF = Integer.parseInt(request.getParameter("edadF"));
                
                String libreT = request.getParameter("libre");
                
               

                Felinos felino = new Felinos(libreT,nombreF, razaF, colorF, edadF);
                veterinaria.add(felino);
            } else if (tipo.equals("busqueda")) {
                
                  String nombreMascotaAEliminar = request.getParameter("nombreB");
                for (int i = 0; i < veterinaria.size(); i++) {
                    
                
                    Mascota objeto = (Mascota) veterinaria.get(i);
             
                    if (objeto.getNombre().equals(nombreMascotaAEliminar)) {
                        
                        veterinaria.remove(i); 
                    i--; 
                    }
                }

            }
        }
        int acumuladorEdad = 0;
        double promedio = 0;
        int nPerros = 0;
        int nGatos = 0;

        Iterator it = veterinaria.iterator();
        while (it.hasNext()) {
            Mascota objeto = (Mascota) it.next();
            acumuladorEdad += objeto.getEdad();
            if (objeto instanceof Caninos) {
                nPerros++;
            }
            if (objeto instanceof Felinos) {
                nGatos++;
            }

        }
        promedio = acumuladorEdad / veterinaria.size();

        request.getSession().setAttribute("lista", veterinaria);
        request.getSession().setAttribute("prom", promedio);
        request.getSession().setAttribute("nGatos", nGatos);
        request.getSession().setAttribute("nPerros", nPerros);
     

        response.sendRedirect("salida.jsp");
   

    }

}
