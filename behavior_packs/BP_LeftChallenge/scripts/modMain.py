# -*- coding: utf-8 -*-

from mod.common.mod import Mod
import mod.server.extraServerApi as serverApi
import mod.client.extraClientApi as clientApi

@Mod.Binding(name = "lcMod", version = "1.0.0")
class lcMod(object):

    def __init__(self):
        pass

    @Mod.InitServer()
    def lcServerInit(self):
        serverApi.RegisterSystem("lcMod", "lcServerSystem", "scripts.lcServer.lcServerSystem")

    @Mod.DestroyServer()
    def lcServerDestroy(self):
        pass
    
    @Mod.InitClient()
    def lcClientInit(self):
        clientApi.RegisterSystem("lcMod", "lcClientSystem", "scripts.lcClient.lcClientSystem")
    
    @Mod.DestroyClient()
    def lcClientDestroy(self):
        pass
