package bookstore_demo.entities;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name = "Account", schema = "dbo")
public class Account {
    @Column(name = "Acc_ID")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int acc_id;
    @Column(name = "Image", length = 150)
    private String image;
    @Column(name = "FullName", length = 50)
    private String fullName;
    @Column(name = "Email", length = 150)
    private String email;
    @Column(name = "Password", length = 250)
    private String password;
    @Column(name = "Gender")
    private Character gender;
    @Column(name = "Address", length = 150)
    private String address;
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
    @Column(name = "BirthDate")
    @Temporal(TemporalType.DATE)
    private Date birthDate;
    @Column(name = "Telephone", length = 10)
    private String telephone;
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
    @Temporal(TemporalType.DATE)
    @Column(name = "CreateDate")
    private Date createDate;
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
    @Temporal(TemporalType.DATE)
    private Date updateDate;
    @Column(name = "Status")
    private boolean status;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name = "Account_Role",
        joinColumns = @JoinColumn(name = "Acc_ID"),
        inverseJoinColumns = @JoinColumn(name = "Role_ID"))
    Set<Role> roles;
}
