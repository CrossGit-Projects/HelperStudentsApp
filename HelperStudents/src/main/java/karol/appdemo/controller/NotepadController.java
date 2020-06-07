package karol.appdemo.controller;


import karol.appdemo.model.Notepad;
import karol.appdemo.service.NotepadService;
import karol.appdemo.model.User;
import karol.appdemo.service.UserService;
import karol.appdemo.utilities.UserUtilities;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Controller
public class NotepadController {

    private static final Logger LOG = LoggerFactory.getLogger(NotepadController.class);

    @Autowired
    private NotepadService notepadService;

    @Autowired
    private MessageSource messageSource;

    @Autowired
    private UserService userService;


    @GET
    @RequestMapping(value = "/notepad")
    public String notepadForm(Model model) {
         Notepad u = new Notepad();
         model.addAttribute("notepad", u);


        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        String email = user.getEmail();

        List<Notepad> notepadList = notepadService.findAll();
        List<Notepad> notepadString = new ArrayList<>();

        for (int i = 0; i < notepadList.size(); i++) {
            if (notepadList.get(i).getEmail().equals(email)) {
                notepadString.add(notepadList.get(i));
            }
        }
        model.addAttribute("notepadString", notepadString);

        return "/notepad";
    }

    @POST
    @RequestMapping(value = "/addnotepad")
    public String notepadAction(Notepad notepad, BindingResult result, Model model, Locale locale) {

        String returnPage = null;

        if (result.hasErrors()) {
            System.out.println("Nie wchodzi dalej w ifa");
            returnPage = "/notepad";
        } else {
            notepadService.saveNotepad(notepad);
            model.addAttribute("message", messageSource.getMessage("notepad.added.success", null, locale));
            model.addAttribute("notepad", new Notepad());
            returnPage = "redirect:/notepad";
        }
        return returnPage;
    }

//    @POST
//    @RequestMapping(value = "/addnotepad")
//    public String notepadAction(Notepad notepad, BindingResult result, Model model, Locale locale) {
//        String returnPage = null;
//
//        if (result.hasErrors()) {
//            returnPage = "notepad";
//        } else {
//            notepadService.updateNotepad(notepad.getNewContent(), notepad.getEmail());
//            returnPage = "notepad";
//            model.addAttribute("message", messageSource.getMessage("passwordChange.success", null, locale));
//        }
//        return returnPage;
//    }


    @DELETE
    @RequestMapping(value = "/notepad/delete/{id}")
    public String deleteNotepad(@PathVariable("id") int id) {
        notepadService.deleteNotepadById(id);
        return "redirect:/notepad";
    }
}
