import { registerAlert } from "@vendure/admin-ui/core";
import { Router } from "@angular/router";
import { interval } from "rxjs";
import { OrderService } from "@vendure/core";
import { RequestContext } from "@vendure/core";
export default [
  OrderService,
  registerAlert({
    id: "payment-authorized-alert",
    check: ({ injector }) => {
      const orderService = injector.get(OrderService);
      const context = injector.get(RequestContext);
      // Fetch orders with the "Payment Authorized" state
      const orders = orderService.findAll(context, {
        filter: {
          state: {
            eq: "PaymentAuthorized",
          },
        },
      });
      console.log(orders);
      return orderService
        .findAll(context, {
          filter: {
            state: {
              eq: "PaymentAuthorized",
            },
          },
        })
        .then((orders) => orders.totalItems);
    },
    recheck: () => interval(60_000),
    isAlert: (orderCount) => orderCount > 0,
    action: (orderCount, { injector }) => {
      injector.get(Router).navigate(["/orders"]);
    },
    label: (orderCount) => ({
      text: `${orderCount} order${
        orderCount === 1 ? "" : "s"
      } with Payment Authorized`,
    }),
  }),
];
