/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author jose
 */
public class user {
    private String username;
    private String user_first;
    private String user_last; 
    private String user_email;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUser_first() {
        return user_first;
    }

    public void setUser_first(String user_first) {
        this.user_first = user_first;
    }

    public String getUser_last() {
        return user_last;
    }

    public void setUser_last(String user_last) {
        this.user_last = user_last;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public user(String username, String user_first, String user_last, String user_email) {
        this.username = username;
        this.user_first = user_first;
        this.user_last = user_last;
        this.user_email = user_email;
    }
    
    
}
