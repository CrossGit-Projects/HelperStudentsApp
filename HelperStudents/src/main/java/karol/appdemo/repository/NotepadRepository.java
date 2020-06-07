package karol.appdemo.repository;


import karol.appdemo.model.Notepad;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository("notepadRepository")
public interface NotepadRepository extends JpaRepository<Notepad, Integer> {

//
//    @Modifying
//    @Query("UPDATE User u SET u.password = :newPassword WHERE u.email= :email")
//    public void updateUserPassword(@Param("newPassword") String password, @Param("email") String email);

    @Modifying
    @Query("UPDATE Notepad u SET u.content = :newContent WHERE u.email = :email")
    public void updateNotepad(@Param("newContent") String content, @Param("email") String email);



    @Modifying
    @Query(value = "DELETE FROM notepad WHERE notepad_id = :id", nativeQuery = true)
    void deleteNotepad(@Param("id") int id);

}
