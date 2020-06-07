package karol.appdemo.model;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "notepad")
@Data
public class Notepad {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "notepad_id")
    private int id;

    @Column(name = "notepad_content")
    @NotNull
    private String content;

    @Column(name = "email")
    @NotNull
    private String email;

    @Transient
    private String newContent;

}
