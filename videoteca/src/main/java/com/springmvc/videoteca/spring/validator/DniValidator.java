/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.videoteca.spring.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.stereotype.Component;

/**
 *
 * @author nazaret
 */
@Component
public class DniValidator {

    private Pattern pattern;
    private Matcher matcher;

    private static final String DNI_PATTERN = "[0-9]{8}";

    public DniValidator() {
        pattern = Pattern.compile(DNI_PATTERN);
    }

    public boolean valid(final String dni) {

        matcher = pattern.matcher(dni);
        return matcher.matches();

    }

}
