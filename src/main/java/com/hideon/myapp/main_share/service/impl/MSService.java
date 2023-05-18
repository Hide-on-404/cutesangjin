package com.hideon.myapp.main_share.service.impl;

import com.hideon.myapp.main_share.Entity.MSEntity;

import java.util.List;
import java.util.Optional;

public interface MSService {

    List<MSEntity> getAllItem();

    Optional<MSEntity> getItemById(Integer num);

    String deleteUserById(Integer num);
}
