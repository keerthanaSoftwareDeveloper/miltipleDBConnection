//package com.example.demodatasource.common;
//
//
//
//import com.example.demodatasource.model.User;
//import org.springframework.stereotype.Component;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.Errors;
//import org.springframework.validation.ValidationUtils;
//import org.springframework.validation.Validator;
//
//@Component
//public class UserValidator implements Validator {
//
//    @Override
//    public boolean supports(Class<?> aClass) {
//        return User.class.equals(aClass);
//    }
//
//    @Override
//    public void validate(Object object, Errors errors) {
//        User user = (User) object;
//
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
//        if (user.getName().length() < 6 || user.getName().length() > 32) {
//            errors.rejectValue("name", "Size.userForm.name");
//        }
//
//
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
//        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
//            errors.rejectValue("password", "Size.userForm.password");
//        }
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");
//        if (user.getAddress().length() < 8 || user.getAddress().length() > 32) {
//            errors.rejectValue("address", "Size.userForm.address");
//        }
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
//        if (user.getEmail().length() < 8 || user.getEmail().length() > 32) {
//            errors.rejectValue("email", "Size.userForm.email");
//        }
//
//    }
//
//
//}
