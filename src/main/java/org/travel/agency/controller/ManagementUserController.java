package org.travel.agency.controller;

import org.springframework.web.bind.annotation.*;
import lombok.AllArgsConstructor;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.travel.agency.entity.Hotel;
import org.travel.agency.entity.User;
import org.travel.agency.security.SecurityService;
import org.travel.agency.service.AuthService;
import org.travel.agency.service.CountryService;
import org.travel.agency.service.HotelService;
import org.travel.agency.validation.UserValidator;

import java.util.List;

@Controller
@AllArgsConstructor
@RequestMapping("/user")
public class ManagementUserController {
    private final HotelService hotelService;
    private final CountryService countryService;

    @GetMapping
    public ModelAndView showAllHotels( @RequestParam(value = "country", required = false) String country) {
        ModelAndView modelAndView = new ModelAndView("home_page_for_user");
        modelAndView.addObject("hotels", findHotelsByCountry(country));
        modelAndView.addObject("countries", countryService.getAll());
        return modelAndView;
    }

    private List<Hotel> findHotelsByCountry(String country) {
        if (country == null)
            return hotelService.getAll();
        return hotelService.getAllByCountry(country);
    }
}
