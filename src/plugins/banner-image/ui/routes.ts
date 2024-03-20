import { registerRouteComponent } from "@vendure/admin-ui/core";
import { BannerComponent } from "./components/banner/banner.component";

export default [
  registerRouteComponent({
    component: BannerComponent,
    path: "",
    title: "Banner Page",
    breadcrumb: "banner",
  }),
];
