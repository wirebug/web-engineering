package de.christoph.verein.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Shout
{
    private String name;
    private String message;
    private String date;

    public Shout()
    {
        this.date = new SimpleDateFormat("dd.MM.yyyy HH:mm").format(new Date());
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getMessage() {return message; }

    public String getDate()
    {
        return date;
    }

    public void setDate(String date)
    {
        this.date = date;
    }

}
