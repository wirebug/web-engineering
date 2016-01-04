package de.christoph.verein.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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

    public String getMessage()
    {
        return message;
    }

    public void setMessage(String message)
    {
        this.message = replaceSmileys(message);
    }

    public String getDate()
    {
        return date;
    }

    public void setDate(String date)
    {
        this.date = date;
    }

    private String replaceSmileys(String text)
    {
        HashMap<String, String> smileys = new HashMap<>();

        smileys.put(":)", "<img src=\"img/).gif\" alt=\":)\" />");
        smileys.put(":D", "<img src=\"img/D.gif\" alt=\":D\" />");
        smileys.put(":P", "<img src=\"img/P.gif\" att=\":P\" />");

        for (Map.Entry<String, String> smiley: smileys.entrySet()) {
            text = text.replace(smiley.getKey(), smiley.getValue());
        }

        return text;
    }
}
