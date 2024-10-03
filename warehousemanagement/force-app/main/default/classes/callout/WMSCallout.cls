public with sharing class WMSCallout {
    /**
     * @param endpoint 'products'
     * @param method GET
     * @param body {"key" : "value" }
     */

    private static httpResponse httpHelper(String endpoint, String method, String body){
        Http h = new Http();
        HttpRequest req = new HttpRequest();

        if(body != null) {
            req.setBody(body);
            req.setHeader('Content-Type', 'application/json');
        }

        req.setMethod(method);
        request.setEndpoint('callout:WMS' + endpoint);

        HttpResponse res = h.send(req);
        System.debug(res.getBody());

        return res;
    }

    /**
     * @param id Product id. Example: 36
     * 
     */
    public static HttpResponse getProduct(String id){
        return httpHelper('product/' + id, 'GET', null);
    }

}