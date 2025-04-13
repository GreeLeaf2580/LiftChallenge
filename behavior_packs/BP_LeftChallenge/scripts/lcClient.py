# -*- coding: utf-8 -*-

import mod.client.extraClientApi as clientApi # type: ignore
ClientSystem = clientApi.GetClientSystemCls()

class lcClientSystem(ClientSystem):

    def __init__(self, namespace, systemName):
        super(lcClientSystem, self).__init__(namespace, systemName)
