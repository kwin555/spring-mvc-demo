package com.in28minutes.todo;

import java.util.Date;
import java.util.Objects;

public class Todo {



    private int id;
    private String user;
    private String desc;
    private Date date;
    private boolean isDone;

    public Todo(int id, String user, String desc, Date date, boolean isDone) {
        this.id = id;
        this.user = user;
        this.desc = desc;
        this.date = date;
        this.isDone = isDone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isDone() {
        return isDone;
    }

    public void setDone(boolean done) {
        isDone = done;
    }

    @Override
    public String toString() {
        return "Todo{" +
            "id=" + id +
            ", user='" + user + '\'' +
            ", desc='" + desc + '\'' +
            ", date=" + date +
            ", isDone=" + isDone +
            '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Todo)) return false;
        Todo todo = (Todo) o;
        return id == todo.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
