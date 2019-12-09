package com.in28minutes.todo;

import com.in28minutes.model.Todo;
import com.in28minutes.todo.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TodoRestController {

    @Autowired
    TodoService todoService;

    @RequestMapping(path = "/todos")
    public List<Todo> retrieveTodos() {
        return todoService.retrieveTodos("in28minutes");
    }
}
