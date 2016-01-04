package de.christoph.verein.model;

import java.util.LinkedList;
import java.util.List;

public class NewsList {
    private static LinkedList<News> newsList = new LinkedList<>();

    public static synchronized void add(News news)
    {
        newsList.add(news);
    }

    public static List<News> getNews()
    {
        return newsList;
    }

    public static synchronized News getNews(String id)
    {
        for(News news: newsList)
        {
            if(news.getID().equals(id)) return news;
        }
        return null;
    }

    public static List<News> getNews(int from, int to)
    {
        return newsList.subList(from, (to < getSize()) ? to : getSize());
    }

    public static News getLastNews()
    {
        return newsList.getLast();
    }

    public static int getSize()
    {
        return newsList.size();
    }
}