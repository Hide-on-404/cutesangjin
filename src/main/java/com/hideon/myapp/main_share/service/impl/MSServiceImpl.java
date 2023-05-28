package com.hideon.myapp.main_share.service.impl;

import com.hideon.myapp.main_share.Entity.MSEntity;
import com.hideon.myapp.main_share.MSRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MSServiceImpl implements MSService{
    MSRepository msRepository;
    @Autowired
    public MSServiceImpl(MSRepository msRepository){
        this.msRepository= msRepository;
    }

    @Override
    public List<MSEntity> getAllItem() {
        System.out.println(msRepository.findAll().size());
        return msRepository.findAll();
    }

    @Override
    public Optional<MSEntity> getItemById(Integer num) {
        return msRepository.findById(num);
    }

    @Override
    public String deleteUserById(Integer num) {
        msRepository.deleteById(num);
        return "";
    }
}


