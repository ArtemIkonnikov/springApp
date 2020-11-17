package com.tecom.ikonnikov.controllers;

import com.tecom.ikonnikov.User;
import com.tecom.ikonnikov.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    private final UserRepository userRepo;

    @Autowired
    public MainController(UserRepository userRepo) {
        this.userRepo = userRepo;
    }

    @GetMapping("/")
    public String greeting() {
        return "welcome";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userRepo.findByUsername(userDetails.getUsername());
        model.put("user", user);
        return "main";
    }

    @GetMapping("/userList")
    public String userList(Map<String, Object> model) {
        List<User> users = userRepo.findAll();
        model.put("users", users);

        return "userList";
    }
}
