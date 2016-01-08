package de.christoph.verein.model;

import java.util.LinkedList;

public class ShoutList {
    private static LinkedList<Shout> shoutList = new LinkedList<>();

    public static synchronized void add(Shout shout)
    {
        shoutList.add(shout);
    }

    public static LinkedList<Shout> getShouts()
    {
        return shoutList;
    }

    public static Shout getLastShout()
    {
        return shoutList.getLast();
    }

    public static int getSize()
    {
        return shoutList.size();
    }
}
