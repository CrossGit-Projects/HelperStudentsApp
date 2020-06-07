package validators;

import karol.appdemo.constans.AppDemoConstatns;
import karol.appdemo.model.User;
import karol.appdemo.utilities.AppdemoUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class EditUserProfileValidator implements Validator {

    @Override
    public boolean supports(Class<?> cls) {
        return User.class.equals(cls);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        User u = (User) obj;

        ValidationUtils.rejectIfEmpty(errors, "name", "errror.userName.empty");
        ValidationUtils.rejectIfEmpty(errors, "lastName", "error.userLastName.empty");
        ValidationUtils.rejectIfEmpty(errors, "email", "error.userEmail.empty");

        if(!u.getEmail().equals(null)) {
            boolean isMatch = AppdemoUtils.checkEmailOrPassword(AppDemoConstatns.EMAIL_PATTERN, u.getEmail());
            if(!isMatch) {
                errors.rejectValue("email", "error.userEmailIsNotMatch");
            }

        }
    }
}
