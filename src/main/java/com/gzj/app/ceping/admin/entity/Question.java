package com.gzj.app.ceping.admin.entity;


import java.util.List;
import java.util.Objects;

public class Question {
    private int id;
    private String name;
    private int index;
    private String decs;
    private List<Options> optionsList;


    public Question() {
    }

    public Question(int id, String name, int index, String decs, List<Options> optionsList) {
        this.id = id;
        this.name = name;
        this.index = index;
        this.decs = decs;
        this.optionsList = optionsList;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getDecs() {
        return decs;
    }

    public void setDecs(String decs) {
        this.decs = decs;
    }

    public List<Options> getOptionsList() {
        return optionsList;
    }

    public void setOptionsList(List<Options> optionsList) {
        this.optionsList = optionsList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Question question = (Question) o;
        return id == question.id &&
                index == question.index &&
                name.equals(question.name) &&
                decs.equals(question.decs) &&
                optionsList.equals(question.optionsList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, index, decs, optionsList);
    }
}
