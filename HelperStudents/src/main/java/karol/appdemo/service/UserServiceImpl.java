package karol.appdemo.service;


import karol.appdemo.model.Role;
import karol.appdemo.repository.RoleRepository;
import karol.appdemo.model.User;
import karol.appdemo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashSet;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {


    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(0);
        user.setKonsultacje("Godziny Konsultacji");
        user.setPhone("Numer telefonu");
        user.setTitleP("Stopień Naukowy");
        user.setMyPage("Strona internetowa");
        user.setInfoStudent("Informacje dla Studenta");
        user.setRoom("Numer pokoju");
        user.setKierunek("kierunek Studiów");
        user.setGroupLab("Grupa Laboratoryjna");
        user.setSpecjalizacja("Specjalizacja studiów");
        user.setWydzial("Wydział studiów");
        user.setFileName("Nazwa pliku zdjęcia");
        user.setFileType("Typ pliku zdjęcia");
        user.setFileName("photo.jpg");
        user.setFileType("image/jpg");
        Path path = Paths.get(System.getProperty("user.dir") + "\\src\\main\\resources\\images\\photo.jpg");
        byte[] content = null;
        try {
            content = Files.readAllBytes(path);
            user.setData(content);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        Integer actualRola = user.getNrRoli();
        String nowRola = null;
        if (actualRola == 2)
            nowRola = "ROLE_USER";
        else if (actualRola == 1)
            nowRola = "ROLE_PROFESOR";
        Role role = roleRepository.findByRole(nowRola);
        user.setRoles(new HashSet<Role>(Arrays.asList(role)));
        userRepository.save(user);
    }

    @Override
    public void updateUserPassword(String newPassword, String email) {
        userRepository.updateUserPassword(bCryptPasswordEncoder.encode(newPassword), email);
    }

    @Override
    public void updateUserProfile(String newName, String newLastName, String newEmail, String newKierunek, String newGroupLab, String newSpecjalizacja, String newWydzial, int id) {
        userRepository.updateUserProfile(newName, newLastName, newEmail, newKierunek, newGroupLab, newSpecjalizacja, newWydzial, id);
    }


    @Override
    public void updateUserActivation(int activeCode, String activationCode) {
        userRepository.updateActivation(activeCode, activationCode);
    }

    @Override
    public void updateProfProfile(String newName, String newLastName, String newEmail, String newKonsultacje, String newPhone, String newTitleP, String newMyPage, String newInfoStudent, String newRoom, int id) {
        userRepository.updateProfProfile(newName, newLastName, newEmail, newKonsultacje, newPhone, newTitleP, newMyPage, newInfoStudent, newRoom, id);
    }

    @Override
    public void updatePhoto(String newFileName, String newFileType, byte[] newData, int id) {
        userRepository.updatePhoto(newFileName, newFileType, newData, id);
    }


    @Override
    public String actuallUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        return currentPrincipalName;
    }

}
