package karol.appdemo.service;

import karol.appdemo.model.Notepad;
import karol.appdemo.repository.NotepadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service("notepadService")
@Transactional
public class NotepadServiceImpl implements NotepadService {

    @Autowired
    private UserService userService;
    @Autowired
    private NotepadRepository notepadRepository;

    @Override
    public void saveNotepad(Notepad notepad) {

        String b = userService.actuallUser();
        notepad.setEmail(b);
     //   notepad.setContent("Testowa notka stworzona po raz pierwszy.");

        notepadRepository.save(notepad);

    }

    @Override
    public List<Notepad> findAll() {
        List<Notepad> notepadList = notepadRepository.findAll();
        return notepadList;
    }

    @Override
    public void updateNotepad(String newContent, String email) {
        notepadRepository.updateNotepad(newContent, email);
    }

    @Override
    public void deleteNotepadById(int id) {
        notepadRepository.deleteNotepad(id);

    }


}
