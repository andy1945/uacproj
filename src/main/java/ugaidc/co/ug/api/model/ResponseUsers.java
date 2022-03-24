/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ugaidc.co.ug.api.model;

import ugaidc.co.ug.entities.Userdata;

/**
 *
 * @author andrew
 */
public class ResponseUsers {
  
  boolean isError;
  String message;
  Userdata userdata;

  public boolean isIsError() {
    return isError;
  }

  public void setIsError(boolean isError) {
    this.isError = isError;
  }


  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public Userdata getUserdata() {
    return userdata;
  }

  public void setUserdata(Userdata userdata) {
    this.userdata = userdata;
  }
  
  
  
}
