package bookstore_demo.entities;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
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
@Table(name = "Role", schema = "dbo")
public class Role {
    @Id
    @Column(name = "Role_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int role_id;
    @Column(name = "Role_Name", length = 10)
    private String role_name;
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
    @Column(name = "CreateDate")
    private Date createDate;
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
    @Column(name = "UpdateDate")
    private Date updateDate;
    @Column(name = "Status")
    private boolean status;

    @ManyToMany(mappedBy = "roles", fetch = FetchType.LAZY)
    @JsonIgnore
    Set<Account> accounts;
}
