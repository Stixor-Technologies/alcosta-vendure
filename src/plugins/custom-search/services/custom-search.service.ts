import { Inject, Injectable } from '@nestjs/common';
import { RequestContext, TransactionalConnection, patchEntity } from '@vendure/core';

import { CUSTOM_SEARCH_PLUGIN_OPTIONS } from '../constants';
import { PluginInitOptions } from '../types';

@Injectable()
export class CustomSearchService {
    constructor(
        private connection: TransactionalConnection,
        @Inject(CUSTOM_SEARCH_PLUGIN_OPTIONS) private options: PluginInitOptions,
    ) {}

    async exampleMethod(
        ctx: RequestContext,
        options?: { input?: string },
    ): Promise<string> {
        return options?.input ? 'Hello ${options.input}' : 'Hello World';
    }
}