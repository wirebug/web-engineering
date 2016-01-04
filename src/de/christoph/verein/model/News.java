package de.christoph.verein.model;

import java.util.UUID;

public class News {
    private UUID id;
    private String author;
    private String date;
    private String title;
    private String text;
    private Category category;

    public News(String author, String date, String title, String text, Category category)
    {
        this.id = UUID.randomUUID();
        this.author = author;
        this.date = date;
        this.title = title;
        this.text = text;
        this.category = category;
    }

    public String getID()
    {
        return id.toString();
    }

    public String getAuthor()
    {
        return author;
    }

    public String getDate()
    {
        return date;
    }

    public String getTitle()
    {
        return title;
    }

    public String getExcerpt(int length)
    {
        return (text.length() > length) ? text.substring(0, length) + "..." : text;
    }

    public String getText()
    {
        return text;
    }

    public String getCategory()
    {
        return category.toString();
    }
}