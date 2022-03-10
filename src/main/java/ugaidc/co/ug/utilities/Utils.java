/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ugaidc.co.ug.utilities;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author andrew
 */
public class Utils {

  public static final String SALT = "finn42ajsu84AA3ne8u2_sdsbd++dsds";

  public static String signUp(String username, String password) {
    String saltedPassword = SALT + password;
    return generateHash(saltedPassword);

  }

  public static Boolean login(String storedPasswordHash, String password) {
    Boolean isAuthenticated = false;
    String saltedPassword = SALT + password;
    String hashedPassword = generateHash(saltedPassword);
    if (hashedPassword.equals(storedPasswordHash)) {
      isAuthenticated = true;
    } else {
      isAuthenticated = false;
    }
    return isAuthenticated;
  }

  public static String generateHash(String input) {
    StringBuilder hash = new StringBuilder();

    try {
      MessageDigest sha = MessageDigest.getInstance("SHA-1");
      byte[] hashedBytes = sha.digest(input.getBytes());
      char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
        'a', 'b', 'c', 'd', 'e', 'f'};
      for (int idx = 0; idx < hashedBytes.length; ++idx) {
        byte b = hashedBytes[idx];
        hash.append(digits[(b & 0xf0) >> 4]);
        hash.append(digits[b & 0x0f]);
      }
    } catch (NoSuchAlgorithmException e) {
      // handle error here.
    }

    return hash.toString();
  }

}
