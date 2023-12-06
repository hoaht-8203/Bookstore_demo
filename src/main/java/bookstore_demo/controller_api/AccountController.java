package bookstore_demo.controller_api;

import bookstore_demo.entities.Account;
import bookstore_demo.services.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("api/accounts")
public class AccountController {
    @Autowired
    private AccountService accountService;

    @GetMapping(value = {"", "/"})
    public List<Account> listAccount() {
        return accountService.listAll();
    }

    @GetMapping("/{accId}")
    public List<Account> listAccountById(@PathVariable int accId) {
        return accountService.listAccountById(accId);
    }
}
