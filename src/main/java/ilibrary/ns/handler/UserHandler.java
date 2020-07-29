// Note: This handler will be overwritten if the service is regenerated.
// To allow customization and avoid overwriting upon service regeneration,
// please delete this comment.

package ilibrary.ns.handler;

import com.sap.cloud.server.odata.*;

public class UserHandler extends com.sap.cloud.server.odata.DefaultEntityHandler {
    private ilibrary.ns.MainServlet servlet;
    private ilibrary.ns.proxy.IlibraryNsService service;

    public UserHandler(ilibrary.ns.MainServlet servlet, ilibrary.ns.proxy.IlibraryNsService service) {
        super(servlet, service);
        this.servlet = servlet;
        this.service = service;
        allowUnused(this.servlet);
        allowUnused(this.service);
    }

    @Override public DataValue executeQuery(DataQuery query) {
        return service.executeQuery(query).getResult();
    }

    @Override public void createEntity(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        service.createEntity(entity);
    }

    @Override public void updateEntity(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        entity.setMustBeModified(true);
        service.updateEntity(entity);
    }

    @Override public void deleteEntity(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        service.deleteEntity(entity);
    }
}
