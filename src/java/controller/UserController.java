/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author jose
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;



import DB_CON.Connexion;
import java.sql.ResultSet;

import DB_CON.Connexion;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;


@Controller
@RequestMapping("/user_s.htm")

public class UserController {
    
    @RequestMapping(method = RequestMethod.POST)
    public String recive(@RequestParam("user") String user_bd,Model model){
        
        if (user_bd.trim().equals("")) {
            String cad_error = "El campo de Búsqueda está vacío";
            String fuente = "Formulario";
            
            model.addAttribute("error", cad_error);
            model.addAttribute("src", fuente);
            return ("error");
        }else{
            try {
                Connexion bd = new Connexion();
                ArrayList<String> rs = bd.fetch_users(user_bd);
                
                model.addAttribute("nombre", rs.get(0));
                model.addAttribute("email", rs.get(1));
            
            } catch (Exception e) { }
            return ("usuario");
        }
    }
    
}
