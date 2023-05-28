package com.hideon.myapp.main_share;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
public class PostsServiceDTO {
    private int num;
    private String user_id;
    private String title;
    private String content;
    private Timestamp created_at;
    private Timestamp updated_at;
    private int view_count;
    private int sort;
}

//@Data
//@AllArgsConstructor
//class CommentsDTO {
//    private int num;
//    private String user_id;
//    private String title;
//    private String content;
//    private Timestamp created_at;
//    private Timestamp updated_at;
//    private int view_count;
//    private int sort;
//}
