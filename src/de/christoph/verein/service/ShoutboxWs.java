package de.christoph.verein.service;

import de.christoph.verein.model.Shout;
import de.christoph.verein.model.ShoutList;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("shout")
public class ShoutboxWs
{
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public List<Shout> getShouts()
    {
        return ShoutList.getShouts();
    }

    @POST
    @Produces({MediaType.APPLICATION_JSON})
    @Consumes({MediaType.APPLICATION_JSON})
    public Shout addShout(Shout shout)
    {
        ShoutList.add(shout);
        return ShoutList.getLastShout();
    }
}