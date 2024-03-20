import { addNavMenuItem } from "@vendure/admin-ui/core";

export default [
  addNavMenuItem(
    {
      id: "banner",
      label: "Banner",
      routerLink: ["/extensions/banner"],
      icon: "image",
    },
    "catalog"
  ),
];
