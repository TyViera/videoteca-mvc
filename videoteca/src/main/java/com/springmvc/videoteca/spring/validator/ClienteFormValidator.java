/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.validator;

import com.springmvc.videoteca.spring.model.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author nazaret
 */
@Component
public class ClienteFormValidator implements Validator {

    @Autowired
    private EmailValidator emailValidator;
    @Autowired
    private TelefonoValidator telefonoValidator;
    @Autowired
    private DniValidator dniValidator;

    @Override
    public boolean supports(Class<?> type) {
        return Cliente.class.equals(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Cliente target;
        target = (Cliente) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "NotEmpty.clienteForm.nombre");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dni", "NotEmpty.clienteForm.dni");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nick", "NotEmpty.clienteForm.userName");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.clienteForm.email");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty.clienteForm.password");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "NotEmpty.clienteForm.confirmPassword");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "celular", "NotEmpty.clienteForm.celular");

        if (!emailValidator.valid(target.getEmail())) {
            errors.rejectValue("email", "Pattern.clienteForm.email");
        }
        if (!dniValidator.valid(target.getDni())) {
            errors.rejectValue("dni", "Pattern.clienteForm.dni");
        }
        if (!telefonoValidator.valid(target.getCelular())) {
            errors.rejectValue("celular", "Pattern.clienteForm.celular");
        }

        if (!target.getPassword().equals(target.getConfirmPassword())) {
            errors.rejectValue("confirmPassword", "Diff.clienteform.confirmPassword");
        }

    }

}
