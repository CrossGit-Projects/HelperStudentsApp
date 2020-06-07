package karol.appdemo.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "consultations")
@Data
public class Consultations {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "consultations_id")
    private int id;

    @Column(name = "topic")
    @NotNull
    private String topic;

    @Column(name = "description")
    @NotNull
    private String description;

    @Column(name = "date")
    @NotNull
    private String date;

    @Column(name = "hour")
    @NotNull
    private String hour;

    @Column(name = "from_user")
    @NotNull
    private String from_user;

    @Column(name = "to_profesor")
    @NotNull
    private String to_profesor;

    @Column(name = "akceptation")
    @NotNull
    private int akceptation;

    @Column(name = "message_feedback")
    @NotNull
    private String messageFeedback;


}
