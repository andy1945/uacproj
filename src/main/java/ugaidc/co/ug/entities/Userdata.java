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
@Table(name = "userdata")
@XmlRootElement
@NamedQueries({
  @NamedQuery(name = "Userdata.findAll", query = "SELECT u FROM Userdata u"),
  @NamedQuery(name = "Userdata.findById", query = "SELECT u FROM Userdata u WHERE u.id = :id"),
  @NamedQuery(name = "Userdata.findByFirstname", query = "SELECT u FROM Userdata u WHERE u.firstname = :firstname"),
  @NamedQuery(name = "Userdata.findBySurname", query = "SELECT u FROM Userdata u WHERE u.surname = :surname"),
  @NamedQuery(name = "Userdata.findByUsername", query = "SELECT u FROM Userdata u WHERE u.username = :username"),
  @NamedQuery(name = "Userdata.findByPhonenumber", query = "SELECT u FROM Userdata u WHERE u.phonenumber = :phonenumber"),
  @NamedQuery(name = "Userdata.findByEmail", query = "SELECT u FROM Userdata u WHERE u.email = :email"),
  @NamedQuery(name = "Userdata.findByPassword", query = "SELECT u FROM Userdata u WHERE u.password = :password"),
  @NamedQuery(name = "Userdata.findByAge", query = "SELECT u FROM Userdata u WHERE u.age = :age"),
  @NamedQuery(name = "Userdata.findByHivstatus", query = "SELECT u FROM Userdata u WHERE u.hivstatus = :hivstatus")})
public class Userdata implements Serializable {

  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 100)
  @Column(name = "firstname")
  private String firstname;
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Basic(optional = false)
  @Column(name = "id")
  private Integer id;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 100)
  @Column(name = "surname")
  private String surname;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 100)
  @Column(name = "username")
  private String username;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 100)
  @Column(name = "phonenumber")
  private String phonenumber;
  // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 100)
  @Column(name = "email")
  private String email;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 200)
  @Column(name = "password")
  private String password;
  @Basic(optional = false)
  @NotNull
  @Column(name = "age")
  private int age;
  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 8)
  @Column(name = "hivstatus")
  private String hivstatus;

  public Userdata() {
  }

  public Userdata(Integer id) {
    this.id = id;
  }

  public Userdata(Integer id, String firstname, String surname, String username, String phonenumber, String email, String password, int age, String hivstatus) {
    this.id = id;
    this.firstname = firstname;
    this.surname = surname;
    this.username = username;
    this.phonenumber = phonenumber;
    this.email = email;
    this.password = password;
    this.age = age;
    this.hivstatus = hivstatus;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getSurname() {
    return surname;
  }

  public void setSurname(String surname) {
    this.surname = surname;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPhonenumber() {
    return phonenumber;
  }

  public void setPhonenumber(String phonenumber) {
    this.phonenumber = phonenumber;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }

  public String getHivstatus() {
    return hivstatus;
  }

  public void setHivstatus(String hivstatus) {
    this.hivstatus = hivstatus;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (id != null ? id.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof Userdata)) {
      return false;
    }
    Userdata other = (Userdata) object;
    if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "ugaidc.co.ug.entities.Userdata[ id=" + id + " ]";
  }

  public String getFirstname() {
    return firstname;
  }

  public void setFirstname(String firstname) {
    this.firstname = firstname;
  }
  
}
