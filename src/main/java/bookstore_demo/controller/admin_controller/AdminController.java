package bookstore_demo.controller.admin_controller;

import bookstore_demo.controller_api.AccountController;
import bookstore_demo.entities.Account;
import bookstore_demo.services.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AccountService accountService;

    @RequestMapping("/dashboard")
    public String homepage(Model model) {

        return "back-end/homepage";
    }

    @RequestMapping("/account-user")
    public String account_manage(Model model) {
        List<Account> list_account = accountService.listAccountUser();

        model.addAttribute("list_account", list_account);
        model.addAttribute("account_user", "active");

        return "back-end/list-user-account";
    }

    @RequestMapping("/account-user/new")
    public String new_account_user(Model model) throws ParseException {
        SimpleDateFormat sf = new SimpleDateFormat("MM-dd-yyyy");
        String currentDate = sf.format(new Date());
        List<Account> list_account = accountService.listAccountByDate(sf.parse(currentDate));

        model.addAttribute("list_account", list_account);
        model.addAttribute("new_account_user", "active");

        return "back-end/list-user-account";
    }

    @RequestMapping("/account-user/baned")
    public String baned_account_user(Model model) {
        List<Account> list_account = accountService.listAccountByStatus(false);

        model.addAttribute("list_account", list_account);
        model.addAttribute("baned_account_user", "active");

        return "back-end/list-user-account";
    }
}
