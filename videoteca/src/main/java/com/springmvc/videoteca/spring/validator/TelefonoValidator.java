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
public class TelefonoValidator {

    private Pattern pattern;
    private Matcher matcher;

    private static final String TELEFONO_PATTERN = "[0-9]{9}";

    public TelefonoValidator() {
        pattern = Pattern.compile(TELEFONO_PATTERN);
    }

    public boolean valid(final String telefono) {

        matcher = pattern.matcher(telefono);
        return matcher.matches();

    }

}
