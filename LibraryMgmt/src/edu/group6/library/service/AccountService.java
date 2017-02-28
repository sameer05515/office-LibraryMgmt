package edu.group6.library.service;

import edu.group6.library.model.Account;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AccountService {
    String login(Account account);
    String newAccount(Account account);
    int returnId(String phone);

    List<Account> searchAccount(Account account);

    String deleteAccount(int id);

    String editAccount(Account account);

    Account getAccount(int id);
}
