package karol.appdemo.service;

import karol.appdemo.model.Notepad;

import java.util.List;

public interface NotepadService {

    void saveNotepad(Notepad notepad);

    List<Notepad> findAll();

    public void updateNotepad(String newContent, String email);

    void deleteNotepadById(int id);
}
