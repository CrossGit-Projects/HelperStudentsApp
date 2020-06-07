package karol.appdemo.controller;


import karol.appdemo.service.EmailSender;
import karol.appdemo.service.UserService;
import karol.appdemo.model.User;
import karol.appdemo.utilities.AppdemoUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import validators.UserRegisterValidator;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Controller
public class RegisterController {

//   Auto owijanie, zmienna userServie
    @Autowired
    private UserService userService;
//   Pozwala pobierać komunikaty z messageSource z kodu Java
    @Autowired
    MessageSource messageSource;

    @Autowired
    private EmailSender emailSender;



    @GET
    @RequestMapping(value = "/register")
    public String registerForm(Model model) {

        User u = new User();
        Map<Integer, String> roleMap = new HashMap<Integer, String>();
        roleMap = prepareRoleMap();
        model.addAttribute("user", u);
        model.addAttribute("roleMap", roleMap);
        return "register";
    }

    @POST
    @RequestMapping(value = "/adduser")
    public String registerAction(User user, BindingResult result, Model model, Locale locale) {

        String returnPage = null;

        User userExist = userService.findUserByEmail(user.getEmail());

        new UserRegisterValidator().validateEmailExist(userExist, result);

        new UserRegisterValidator().validate(user, result);

        if (result.hasErrors()) {
            returnPage = "register";
        } else {
            user.setActivationCode(AppdemoUtils.randomStringGenerator());

            String content = "Wymagane potwierdzenie rejestracji. Kliknij w poniższy link aby aktywować konto: " +
                    "http://localhost:8080/activatelink/" + user.getActivationCode();

            userService.saveUser(user);
            emailSender.sendEmail(user.getEmail(), "Potwierdzenie rejestracji", content);
            model.addAttribute("message", messageSource.getMessage("user.register.success.email", null, locale));
            model.addAttribute("user", new User());
            returnPage = "register";
        }

        return returnPage;
    }

    @POST
    @RequestMapping(value = "/activatelink/{activationCode}")
    public String activateAccount(@PathVariable("activationCode") String activationCode, Model model, Locale locale) {

        userService.updateUserActivation(1, activationCode);

        model.addAttribute("message", messageSource.getMessage("user.register.success", null, locale));

        return "index";
    }

    // przygotowanie mapy ról
    public Map<Integer, String> prepareRoleMap() {
        Locale locale = Locale.getDefault();
        Map<Integer, String> roleMap = new HashMap<Integer, String>();
        roleMap.put(1, messageSource.getMessage("word.profesor", null, locale));
        roleMap.put(2, messageSource.getMessage("word.user", null, locale));

        return roleMap;
    }

}
