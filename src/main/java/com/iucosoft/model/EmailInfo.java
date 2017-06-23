package com.iucosoft.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * @author Anonyms
 */
public class EmailInfo {

    private String from;

    @NotEmpty(message = "FirstName cannot be empty")
    @Size(min = 3, max = 12, message = "Size should be between 1 to 6")

    private String name;

    @NotNull()
    @Pattern(regexp = "(^$|[0-9]{9})", message = "Phone invalid")

    private String phone;

    private String to;
    private String subject;
    @NotNull()
    @Size(min = 15, message = "Size should be min 15")
    private String message;
    @NotEmpty(message = "Email Address cannot be empty")
    @Email(message = "Please enter a valid email address")
    private String email;

    public EmailInfo() {
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
