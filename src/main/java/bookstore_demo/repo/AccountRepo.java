package bookstore_demo.repo;

import bookstore_demo.entities.Account;
import org.hibernate.annotations.Parent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface AccountRepo extends JpaRepository<Account, Integer> {
    @Query("select a from Account a join a.roles r where r.role_name = :roleName")
    public List<Account> findAccountByRole(@Param("roleName") String roleName);

    @Query("select a from Account a where a.acc_id = :accId")
    public List<Account> findAccountById(@Param("accId") int accId);

    @Query("select a from Account a where a.acc_id not in " +
            "( select a.acc_id from Account join a.roles r where r.role_name = 'ADMIN')")
    public List<Account> getAccountUser();

    @Query("select a from Account a where a.createDate = :createDate")
    public List<Account> findAccountByDate(@Param("createDate") Date createDate);

    @Query("select a from Account a where a.status = :status")
    public List<Account> findAccountByStatus(@Param("status") Boolean status);

    @Query("select count(a.acc_id) from Account a")
    public Integer totalAccount();


}
