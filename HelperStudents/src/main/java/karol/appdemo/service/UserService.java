package karol.appdemo.service;


import karol.appdemo.model.User;

public interface UserService {

    public User findUserByEmail(String email);
    public void saveUser(User user);
    public void updateUserPassword(String newPassword, String email);
    public void updateUserProfile(String newName, String newLastName, String newEmail, String newKierunek, String newGroupLab, String newSpecjalizacja, String newWydzial, int id);
    public void updateUserActivation(int activeCode, String activationCode);
    public void updateProfProfile(String newName, String newLastName, String newEmail, String newKonsultacje, String newPhone, String newTitleP, String newMyPage, String newInfoStudent, String newRoom, int id);


    public void updatePhoto(String newFileName, String newFileType, byte[] newData,int id);
    public String actuallUser();


}
