package nqt.cv.CVProjectJavaMVC.service;

import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Role;
import nqt.cv.CVProjectJavaMVC.repository.RoleRepository;

@Service
public class RoleService {
    private RoleRepository roleRepository;
    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Role getRoleByName(String name){
        return roleRepository.findByName(name);
    }
}
