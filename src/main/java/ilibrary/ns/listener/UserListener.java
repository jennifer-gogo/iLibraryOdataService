package ilibrary.ns.listener;

import com.sap.cloud.server.odata.*;

public class UserListener extends com.sap.cloud.server.odata.DefaultEntityListener {
    private ilibrary.ns.MainServlet servlet;
    private ilibrary.ns.proxy.IlibraryNsService service;

    public UserListener(ilibrary.ns.MainServlet servlet, ilibrary.ns.proxy.IlibraryNsService service) {
        super();
        this.servlet = servlet;
        this.service = service;
        allowUnused(this.servlet);
        allowUnused(this.service);
    }

    @Override public void beforeQuery(DataQuery query) {
        allowUnused(query);
    }

    public void beforeSave(EntityValue entityValue) {
        // Shared code for beforeCreate / beforeUpdate.
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
    }

    @Override public void beforeCreate(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
        beforeSave(entity);
    }

    @Override public void beforeUpdate(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
        beforeSave(entity);
    }

    @Override public void beforeDelete(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
    }

    public void afterSave(EntityValue entityValue) {
        // Shared code for afterCreate / afterUpdate.
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
    }

    @Override public void afterCreate(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
        afterSave(entity);
    }

    @Override public void afterUpdate(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
        afterSave(entity);
    }

    @Override public void afterDelete(EntityValue entityValue) {
        ilibrary.ns.proxy.User entity = (ilibrary.ns.proxy.User)entityValue;
        allowUnused(entity);
    }
}
