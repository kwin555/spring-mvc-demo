package com.in28minutes.login;

import com.in28minutes.login.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    LoginService service = new LoginService();

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String handleLoginRequest(@RequestParam String name, @RequestParam String password , ModelMap modelMap) {
        if(!service.isUserValid(name, password)) {
            modelMap.put("errorMessage", "Invalid Credentials");
            return "login";
        }
        modelMap.put("name", name);
        modelMap.put("password", password);
        return "welcome";
    }

}