package edu.group6.library.controller;

import edu.group6.library.model.Category;
import edu.group6.library.model.Press;
import edu.group6.library.service.MapsService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MapsController {

    private Logger logger = Logger.getLogger(MapsController.class);

    @Autowired
    private MapsService mapsService;

    @ResponseBody
    @RequestMapping(value = "/addCategory",method = RequestMethod.POST)
    public int addCategory(@ModelAttribute Category category)
    {
        return mapsService.insertCategory(category);
    }

    @ResponseBody
    @RequestMapping(value = "/getCategoryByParentId",method = RequestMethod.POST)
    public List<Category> addCategory(@RequestParam int id)
    {
        return mapsService.getCategoryByParentId(id);
    }

    @ResponseBody
    @RequestMapping(value = "/getPresses",method = RequestMethod.POST)
    public List<Press> getPresses()
    {
        return mapsService.getPresses();
    }

}
