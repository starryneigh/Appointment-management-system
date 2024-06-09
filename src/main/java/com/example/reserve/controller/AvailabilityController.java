package com.example.reserve.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/availability")
@Controller
public class AvailabilityController {
    @RequestMapping("/availability_list")
    public String freetimeList() {
        return "availability/availabilityList";
    }
}
