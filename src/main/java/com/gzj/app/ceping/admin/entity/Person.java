package com.gzj.app.ceping.admin.entity;


import java.util.Objects;

public class Person {
    private int id;
    private int type;
    private String desc;
    private String label;
    private String level;

    public Person() {
    }

    public Person(int id, int type, String desc, String label, String level) {
        this.id = id;
        this.type = type;
        this.desc = desc;
        this.label = label;
        this.level = level;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Person person = (Person) o;
        return id == person.id &&
                type == person.type &&
                desc.equals(person.desc) &&
                label.equals(person.label) &&
                level.equals(person.level);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, type, desc, label, level);
    }
}
