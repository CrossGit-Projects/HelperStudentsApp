package karol.appdemo.service;

import karol.appdemo.model.DeanGroup;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface DeanGroupService {

    void saveDeanGroup(DeanGroup deanGroup);

    Page<DeanGroup> findAll(Pageable pageable);

    void deleteDeanGroupById(int id);

    List<DeanGroup> findAll();

}
