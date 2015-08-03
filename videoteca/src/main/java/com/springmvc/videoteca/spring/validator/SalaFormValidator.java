/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.springmvc.videoteca.spring.validator;

import com.springmvc.videoteca.spring.model.Sala;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author more-panta
 */
@Component
public class SalaFormValidator implements Validator{
    
    
    @Override
    public boolean supports(Class<?> type) {
        return Sala.class.equals(type);
    }
    
    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "numero", "NotEmpty.salaForm.numero");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tipo", "NotEmpty.salaForm.tipo");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "capacidad", "NotEmpty.salaForm.capacidad");
        
    }
    
}
