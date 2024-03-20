import { SharedModule } from "@vendure/admin-ui/core";
import { Component } from "@angular/core";

@Component({
  selector: "banner-section",
  template: ` <vdr-page-block>
    <h2>{{ greeting }} zax</h2>
  </vdr-page-block>`,
  standalone: true,
  imports: [SharedModule],
})
export class BannerComponent {
  greeting = "Hello!";
}
