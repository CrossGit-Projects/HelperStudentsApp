package karol.appdemo.model;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Entity
@Table(name = "user")
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private int id;

    @Column(name = "email")
    @NotNull
    private String email;

    @Column(name = "password")
    @NotNull
    private String password;

    @Column(name = "name")
    @NotNull
    private String name;

    @Column(name = "last_name")
    @NotNull
    private String lastName;

    @Column(name = "active")
    @NotNull
    private int active;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

    @Transient
    private int nrRoli;

    @Transient
    private String newPassword;

    @Column(name = "activation_code")
    private String activationCode;



    // pola stworzone dla profesora
    @Column(name = "konsultacje")
    @NotNull
    private String konsultacje;

    @Column(name = "phone")
    @NotNull
    private String phone;

    @Column(name = "title_prof")
    @NotNull
    private String titleP;

    @Column(name = "my_page")
    @NotNull
    private String myPage;

    @Column(name = "info_student")
    @NotNull
    private String infoStudent;

    @Column(name = "room")
    @NotNull
    private String room;

    //pola stworzone dla usera
    @Column(name = "kierunek")
    @NotNull
    private String kierunek;

    @Column(name = "group_lab")
    @NotNull
    private String groupLab;

    @Column(name = "specjalizacja")
    @NotNull
    private String specjalizacja;

    @Column(name = "wydzial")
    @NotNull
    private String wydzial;




    // add photo img
    @Transient
    private MultipartFile photo;

    @Transient
    private String image;


    @Lob
    @Column(name = "data")
    private byte[] data;

    @Column(name = "file_name")
    @NotNull
    private String fileName;

    @Column(name = "file_type")
    @NotNull
    private String fileType;



    @Override
    public String toString() {
        return name+" "+lastName;
    }
}

