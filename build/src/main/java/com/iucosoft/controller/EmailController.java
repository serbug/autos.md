package com.iucosoft.controller;

import com.iucosoft.model.EmailInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.validation.Valid;
import java.io.UnsupportedEncodingException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller("/contact")
public class EmailController {

    @Autowired
    ServletContext context;
    @Autowired
    JavaMailSender mailSender;

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String showForm(ModelMap model) {
        model.addAttribute("mail", new EmailInfo());
        return "contact";
    }

    @RequestMapping(value = "send", method = RequestMethod.POST)
    public String sendWithAttach(@Valid @ModelAttribute("mail") EmailInfo mailInfo, BindingResult result, RedirectAttributes attributes, ModelMap model) throws UnsupportedEncodingException {
        if (result.hasErrors()) {
            model.addAttribute("error", "Error Send Message!");
            attributes.addFlashAttribute("error", "Error Send Message!");
            return "contact";
        }
        try {
            final JavaMailSenderImpl ms = (JavaMailSenderImpl) mailSender;
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            //get only username to show
            String frEmail = ms.getUsername();
            mailInfo.setFrom(frEmail);
            String toEmail = "nixor_09@mail.ru";
            mailInfo.setTo(toEmail);

            //do not need to setFrom so set in servlet-gmail.xml file
            //set name of account email if want to show name instead account
            helper.setFrom(new InternetAddress("Company"));
            helper.setTo(mailInfo.getTo());

            //helper.setReplyTo(mailInfo.getFrom()); //if any
            helper.setSubject(mailInfo.getSubject());
            helper.setText("NAME: " + mailInfo.getName() + "<br /><br />" + "Email: " + mailInfo.getEmail() + "<br /><br />" + "Phone: " + mailInfo.getPhone() + "<br /><br />" + "Message: " + mailInfo.getMessage(), true);

            mailSender.send(message);

        } catch (MessagingException | MailException ex) {
            model.addAttribute("errores", "Error! Please check the inputs!");
            attributes.addFlashAttribute("errores", "Error! Please check the inputs!");
            return "redirect:/contact";
        }
        attributes.addFlashAttribute("succes", "Success! Message sent!");
        model.addAttribute("succes", "Success! Message send!");
        model.addAttribute("mail", new EmailInfo());

        return "redirect:/contact";

    }

}
