package com.hideon.myapp.main_share;

import com.hideon.myapp.main_share.Entity.MSEntity;
import com.hideon.myapp.main_share.service.impl.MSService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("main")
public class MScontroller {
//    @Autowired
//    MSRepository msRepository;
    @Autowired
    MSService msService;

    @GetMapping("123")
    public String homeMethod(){
        return "main";
    }

    @GetMapping("")
    public String getAllUser(Model model){
        for(MSEntity entity: msService.getAllItem() ){
            System.out.println(entity);
        }
        model.addAttribute("list",msService.getAllItem());

        return "main";
    }

    @GetMapping("{num}")
    public Optional<MSEntity> getUserById(@PathVariable("num") Integer num){
        return msService.getItemById(num);
    }

    @GetMapping("delete/{num}")
    public String deleteUserById(@PathVariable("num") Integer num){
        msService.deleteUserById(num);
        return "main";
    }


//    @RequestMapping("/")
//    public String findall(Model model){
//        model.addAttribute("name",msRepository.findAll());
//        System.out.println(msRepository.findAll());
//        System.out.println("gdgd");
//        return "main";
//
//    }

}