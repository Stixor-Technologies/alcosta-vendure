import { PluginCommonModule, Type, VendurePlugin } from '@vendure/core';
import path from 'path';

import { CustomSearchService } from './services/custom-search.service';
import { CUSTOM_SEARCH_PLUGIN_OPTIONS } from './constants';
import { PluginInitOptions } from './types';


@VendurePlugin({
    imports: [PluginCommonModule],
    entities: [],
    providers: [
        CustomSearchService,
        { provide: CUSTOM_SEARCH_PLUGIN_OPTIONS, useFactory: () => CustomSearchPlugin.options },
    ],
    compatibility: '^2.0.0',
})
export class CustomSearchPlugin {
    static options: PluginInitOptions;

    static init(options: PluginInitOptions): Type<CustomSearchPlugin> {
        this.options = options;
        return CustomSearchPlugin;
    }
}