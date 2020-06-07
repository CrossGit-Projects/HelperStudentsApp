package karol.appdemo.model;
import lombok.Data;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "deangroup")
@Data
public class
DeanGroup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "groupdean_id")
    private int id;

    @Column(name = "department")
    @NotNull
    private String department;

    @Column(name = "field_of_study")
    @NotNull
    private String fieldOfStudy;

    @Column(name = "group_lab")
    @NotNull
    private String group;

    @Column(name = "specialization")
    @NotNull
    private String specialization;

}
