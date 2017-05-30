/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import beans.user;
import DB_CON.Connexion;
/**
 *
 * @author jose
 */

@Controller
@RequestMapping("/crea_user.htm")
public class creaController {
    
    @RequestMapping(method = RequestMethod.POST)
    public String recive(@RequestParam("user") String user_bd,
                        @RequestParam("first") String nom_bd,
                        @RequestParam("last")  String ape_bd,
                        @RequestParam("email") String email_bd,  
                        Model model)
    {
        
        user nuevo = new user(user_bd, nom_bd, ape_bd, email_bd);
        Connexion con = new Connexion();
        boolean exito = con.inserta(nuevo);
        
        if(!exito){           
            model.addAttribute("error", "Error al insertar en base de datos");
            model.addAttribute("src", "Formulario");
            return ("error");
        } else {
            model.addAttribute("exito", "Usuario creado con éxito");
            model.addAttribute("nombre", user_bd);
            model.addAttribute("correo", email_bd);
            return("exito_u");
        }
        
    }
    
}
