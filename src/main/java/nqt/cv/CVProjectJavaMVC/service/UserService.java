package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;

import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.repository.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }
}
