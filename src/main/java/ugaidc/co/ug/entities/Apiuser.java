/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ugaidc.co.ug.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author andrew
 */
@Entity
@Table(name = "apiuser")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Apiuser.findAll", query = "SELECT a FROM Apiuser a"),
  @NamedQuery(name = "Apiuser.findByUserid", query = "SELECT a FROM Apiuser a WHERE a.userid = :userid"),
  @NamedQuery(name = "Apiuser.findByUsername", query = "SELECT a FROM Apiuser a WHERE a.username = :username"),
  @NamedQuery(name = "Apiuser.findByPassword", query = "SELECT a FROM Apiuser a WHERE a.password = :password"),
  @NamedQuery(name = "Apiuser.findByToken", query = "SELECT a FROM Apiuser a WHERE a.token = :token")})
public class Apiuser implements Serializable {

  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @Column(name = "userid")
  private Integer userid;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 100)
  @Column(name = "username")
  private String username;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 200)
  @Column(name = "password")
  private String password;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 300)
  @Column(name = "token")
  private String token;

  public Apiuser() {
  }

  public Apiuser(Integer userid) {
    this.userid = userid;
  }

  public Apiuser(Integer userid, String username, String password, String token) {
    this.userid = userid;
    this.username = username;
    this.password = password;
    this.token = token;
  }

  public Integer getUserid() {
    return userid;
  }

  public void setUserid(Integer userid) {
    this.userid = userid;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getToken() {
    return token;
  }

  public void setToken(String token) {
    this.token = token;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (userid != null ? userid.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Apiuser)) {
      return false;
    }
    Apiuser other = (Apiuser) object;
    if ((this.userid == null && other.userid != null) || (this.userid != null && !this.userid.equals(other.userid))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "ugaidc.co.ug.entities.Apiuser[ userid=" + userid + " ]";
  }
  
}
