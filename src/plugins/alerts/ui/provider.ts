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
     
    },
    recheck: () => interval(10_000),
    isAlert: (orderCount) => orderCount > 0,
    action: (orderCount, { injector }) => {
      injector.get(Router).navigate(["/orders"]);
    },
    label: (orderCount) => ({
      text: ` with Payment Authorized`,
    }),
  }),
];
