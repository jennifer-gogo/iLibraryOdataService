package ilibrary.ns.handler;

import com.sap.cloud.server.odata.*;

public class BorrowBookHandler extends com.sap.cloud.server.odata.DefaultMethodHandler {
    private ilibrary.ns.MainServlet servlet;
    private ilibrary.ns.proxy.IlibraryNsService service;

    public BorrowBookHandler(ilibrary.ns.MainServlet servlet, ilibrary.ns.proxy.IlibraryNsService service) {
        super(servlet, service);
        this.servlet = servlet;
        this.service = service;
        allowUnused(this.servlet);
        allowUnused(this.service);
    }

    @Override public DataValue executeMethod(DataMethod method, ParameterList parameters) {
        long UserId = LongValue.unwrap(parameters.getRequired("UserId"));
        long BookId = LongValue.unwrap(parameters.getRequired("BookId"));
        boolean input = borrowBook(UserId, BookId);
        return BooleanValue.of(input);
    }

    public boolean borrowBook(long UserId, long BookId) {
        // Method implementation code should be placed here...
        throw DataServiceException.notImplemented("BorrowBook");
    }
}
