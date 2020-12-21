package com.gzj.app.ceping.admin.entity;

import java.util.Objects;

public class Options {
    private int id;
    private int index;
    private String name;

    public Options() {
    }

    public Options(int id, int index, String name) {
        this.id = id;
        this.index = index;
        this.name = name;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Options options = (Options) o;
        return id == options.id &&
                index == options.index &&
                Objects.equals(name, options.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, index, name);
    }
}
