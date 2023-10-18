--Resource will start on specific day/ season for event (chirstmas, halloween, normal season, ...) to automatic change UI, or any event in game
--add 3rd line to server.cfg right after MYSQL 
--add_ace resource.RR-Event command.add_principal allow

--Make sure all the event listed here wont start at server.cfg
--Make sure the timeline range is independent
Config = {}

Config.DEBUG = true

--Resource list :  
Config.resourceListDefault = {
    noti = 'test defaut noti',
    loading = 'default loading',
    event = nil,
    map = nil,
}

Config.Timeline = {
    ['newyear'] = {
        start = {
            date = 20,
            month = 12,
        },
        finish = {
            date = 10,
            month = 1,
        },
        resourcelist = {
            noti = 'Test',
            loading = 'Test',
            event = 'Test',
            map = 'Test',
        },
    },
    ['lunarnewyear'] = {
        start = {
            date = 12,
            month = 1,
        },
        finish = {
            date = 13,
            month = 1,
        },
        resourcelist = {
            noti = nil,
            loading = nil,
            event = nil,
            map = nil,
        },
    },
    ['valentine'] = {
        start = {
            date = 1,
            month = 2,
        },
        finish = {
            date = 14,
            month = 2,
        },
        resourcelist = {
            noti = nil,
            loading = nil,
            event = nil,
            map = nil,
        },
    },
    ['womenday'] = {
        start = {
            date = 1,
            month = 3,
        },
        finish = {
            date = 8,
            month = 3,
        },
        resourcelist = {
            noti = nil,
            loading = nil,
            event = nil,
            map = nil,
        },
    },
    ['easter'] = {
        start = {
            date = 1,
            month = 4,
        },
        finish = {
            date = 16,
            month = 4,
        },
        resourcelist = {
            noti = nil,
            loading = nil,
            event = nil,
            map = nil,
        },
    }, 

    ['halloween'] = {
        start = {
            date = 1,
            month = 10,
        },
        finish = {
            date = 31,
            month = 10,
        },
        resourcelist = {
            noti = "Test2",
            loading = nil,
            event = nil,
            map = "Test4",
        },
    },
    ['thanksgiving'] = {
        start = {
            date = 1,
            month = 11,
        },
        finish = {
            date = 31,
            month = 11,
        },
        resourcelist = {
            noti = nil,
            loading = nil,
            event = nil,
            map = nil,
        },
    },
    
    ['chirstmas'] = {
        start = {
            date = 1,
            month = 12,
        },
        finish = {
            date = 25,
            month = 12,
        },
        resourcelist = {
            noti = nil,
            loading = nil,
            event = nil,
            map = nil,
        },
    },
    

}