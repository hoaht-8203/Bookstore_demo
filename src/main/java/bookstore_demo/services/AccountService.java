package bookstore_demo.services;

import bookstore_demo.entities.Account;
import bookstore_demo.repo.AccountRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AccountService {
    @Autowired
    private AccountRepo accountRepo;

    public List<Account> listAll() {
        return accountRepo.findAll();
    }

    public List<Account> listAccountByRole(String roleName) {
        return accountRepo.findAccountByRole(roleName);
    }

    public List<Account> listAccountById(int accId) { return accountRepo.findAccountById(accId); }

    public List<Account> listAccountUser() {
        return accountRepo.getAccountUser();
    }

    public List<Account> listAccountByDate(Date date) {
        return accountRepo.findAccountByDate(date);
    }

    public List<Account> listAccountByStatus(Boolean status) {
        return accountRepo.findAccountByStatus(status);
    }
}
