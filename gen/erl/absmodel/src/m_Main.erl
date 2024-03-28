-module(m_Main).
-behaviour(application).
-include_lib("../include/abs_types.hrl").
-export([main/1]).
%% Application callbacks
-export([start/2, stop/1]).

'main'(Cog=#cog{ref=CogRef,dcobj=DC})->
    put(vars, #{}),
    C = none,
    Oid = null, % avoid self-call branch in synccall code
    O = #object{oid=Oid,cog=Cog},
    put(this, {state, none}),
    Stack = [DC],
     %% main.abs:25--25
    put(vars, (get(vars))#{'cp' => object:new(cog:start(Cog,DC),class_ABS_DC_CloudProvider,[<<"CloudProvider"/utf8>>,[]],Cog,[O,DC| Stack])}),
     %% main.abs:26--26
    put(vars, (get(vars))#{'prometheus' => object:new(cog:start(Cog,DC),class_Architecture_Prometheus,[[]],Cog,[O,DC| Stack])}),
     %% main.abs:28--30
    put(vars, (get(vars))#{'tmp136100356' => m_Param_funs:f_metrics(Cog,[O,DC| Stack])}),
     %% main.abs:28--30
    []=(fun Loop ([])->
        case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp136100356', get(vars)),[O,DC| Stack])) of
        false -> [];
        true -> receive
                {stop_world, CogRef} ->
                    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                    cog:task_is_runnable(Cog,self()),
                    task:wait_for_token(Cog,[O,DC| Stack])
                after 0 -> ok
            end,
             %% main.abs:28--30
            put(vars, (get(vars))#{'m' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp136100356', get(vars)),[O,DC| Stack])}),
             %% main.abs:28--30
            put(vars, (get(vars))#{'tmp136100356' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp136100356', get(vars)),[O,DC| Stack])}),
             %% main.abs:29--29
            put(vars, (get(vars))#{'tmp1295599286' => m_Param_funs:f_services(Cog,[O,DC| Stack])}),
             %% main.abs:29--29
            []=(fun Loop ([])->
                case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1295599286', get(vars)),[O,DC| Stack])) of
                false -> [];
                true -> receive
                        {stop_world, CogRef} ->
                            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                            cog:task_is_runnable(Cog,self()),
                            task:wait_for_token(Cog,[O,DC| Stack])
                        after 0 -> ok
                    end,
                     %% main.abs:29--29
                    put(vars, (get(vars))#{'s' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1295599286', get(vars)),[O,DC| Stack])}),
                     %% main.abs:29--29
                    put(vars, (get(vars))#{'tmp1295599286' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1295599286', get(vars)),[O,DC| Stack])}),
                     %% main.abs:29--29
                    put(vars, (get(vars))#{'tmp1856277665' => cog:create_task(maps:get('prometheus', get(vars)),'m_init',[maps:get('m', get(vars)),maps:get('s', get(vars)),[]],#task_info{method= <<"init"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                     %% main.abs:29--29
                    future:await(maps:get('tmp1856277665', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                Loop([])  end end)
            ([]),
        Loop([])  end end)
    ([]),
     %% main.abs:33--33
    put(vars, (get(vars))#{'setup' => object:new(cog:start(Cog,DC),class_Setup_Setup,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:34--34
    put(vars, (get(vars))#{'tmp216747921' => cog:create_task(maps:get('setup', get(vars)),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:34--34
    future:await(maps:get('tmp216747921', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:35--35
    put(vars, (get(vars))#{'tmp1389380148' => cog:create_task(maps:get('setup', get(vars)),'m_getUpdateMilesLoadBalancerInterface',[[]],#task_info{method= <<"getUpdateMilesLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:35--35
    future:await(maps:get('tmp1389380148', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:35--35
    put(vars, (get(vars))#{'updateMilesLBList' => future:get_blocking(maps:get('tmp1389380148', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:36--36
    put(vars, (get(vars))#{'updateMilesLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('updateMilesLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:38--38
    put(vars, (get(vars))#{'tmp1979001148' => cog:create_task(maps:get('setup', get(vars)),'m_getViewProfileLoadBalancerInterface',[[]],#task_info{method= <<"getViewProfileLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:38--38
    future:await(maps:get('tmp1979001148', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:38--38
    put(vars, (get(vars))#{'viewProfileLBList' => future:get_blocking(maps:get('tmp1979001148', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:39--39
    put(vars, (get(vars))#{'viewProfileLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('viewProfileLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:41--41
    put(vars, (get(vars))#{'tmp1065251495' => cog:create_task(maps:get('setup', get(vars)),'m_getAuthLoadBalancerInterface',[[]],#task_info{method= <<"getAuthLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:41--41
    future:await(maps:get('tmp1065251495', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:41--41
    put(vars, (get(vars))#{'authLBList' => future:get_blocking(maps:get('tmp1065251495', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:42--42
    put(vars, (get(vars))#{'authLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('authLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:44--44
    put(vars, (get(vars))#{'tmp1774138654' => cog:create_task(maps:get('setup', get(vars)),'m_getValidateIdLoadBalancerInterface',[[]],#task_info{method= <<"getValidateIdLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:44--44
    future:await(maps:get('tmp1774138654', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:44--44
    put(vars, (get(vars))#{'validateIdLBList' => future:get_blocking(maps:get('tmp1774138654', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:45--45
    put(vars, (get(vars))#{'validateIdLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('validateIdLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:47--47
    put(vars, (get(vars))#{'tmp967707647' => cog:create_task(maps:get('setup', get(vars)),'m_getGetRewardMilesLoadBalancerInterface',[[]],#task_info{method= <<"getGetRewardMilesLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:47--47
    future:await(maps:get('tmp967707647', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:47--47
    put(vars, (get(vars))#{'getRewardMilesLBList' => future:get_blocking(maps:get('tmp967707647', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:48--48
    put(vars, (get(vars))#{'getRewardMilesLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('getRewardMilesLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:50--50
    put(vars, (get(vars))#{'tmp1699641663' => cog:create_task(maps:get('setup', get(vars)),'m_getQueryFlightsLoadBalancerInterface',[[]],#task_info{method= <<"getQueryFlightsLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:50--50
    future:await(maps:get('tmp1699641663', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:50--50
    put(vars, (get(vars))#{'queryFlightsLBList' => future:get_blocking(maps:get('tmp1699641663', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:51--51
    put(vars, (get(vars))#{'queryFlightsLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('queryFlightsLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:53--53
    put(vars, (get(vars))#{'tmp703190139' => cog:create_task(maps:get('setup', get(vars)),'m_getBookFlightsLoadBalancerInterface',[[]],#task_info{method= <<"getBookFlightsLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:53--53
    future:await(maps:get('tmp703190139', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:53--53
    put(vars, (get(vars))#{'bookFlightsLBList' => future:get_blocking(maps:get('tmp703190139', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:54--54
    put(vars, (get(vars))#{'bookFlightsLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('bookFlightsLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:56--56
    put(vars, (get(vars))#{'tmp971899805' => cog:create_task(maps:get('setup', get(vars)),'m_getCancelBookingLoadBalancerInterface',[[]],#task_info{method= <<"getCancelBookingLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:56--56
    future:await(maps:get('tmp971899805', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:56--56
    put(vars, (get(vars))#{'cancelBookingLBList' => future:get_blocking(maps:get('tmp971899805', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:57--57
    put(vars, (get(vars))#{'cancelBookingLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('cancelBookingLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:59--59
    put(vars, (get(vars))#{'tmp1884685996' => cog:create_task(maps:get('setup', get(vars)),'m_getUpdateProfileLoadBalancerInterface',[[]],#task_info{method= <<"getUpdateProfileLoadBalancerInterface"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
     %% main.abs:59--59
    future:await(maps:get('tmp1884685996', get(vars)), Cog, [O,DC| Stack]),
    ok,
     %% main.abs:59--59
    put(vars, (get(vars))#{'updateProfileLBList' => future:get_blocking(maps:get('tmp1884685996', get(vars)), Cog, [O,DC| Stack])}),
     %% main.abs:60--60
    put(vars, (get(vars))#{'updateProfileLB' => m_ABS_StdLib_funs:f_head(Cog,maps:get('updateProfileLBList', get(vars)),[O,DC| Stack])}),
     %% main.abs:63--63
    put(vars, (get(vars))#{'cancD' => object:new(cog:start(Cog,DC),class_CancelBookingDeployment_CancelBookingDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('cancelBookingLB', get(vars)),maps:get('getRewardMilesLB', get(vars)),maps:get('updateMilesLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:64--64
    put(vars, (get(vars))#{'cancelWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[maps:get('cancD', get(vars)),null,null,null,null,null,null,null,null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:66--66
    put(vars, (get(vars))#{'rewD' => object:new(cog:start(Cog,DC),class_GetRewardMilesDeployment_GetRewardMilesDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('getRewardMilesLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:67--67
    put(vars, (get(vars))#{'getRewardWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,maps:get('rewD', get(vars)),null,null,null,null,null,null,null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:69--69
    put(vars, (get(vars))#{'bookflightD' => object:new(cog:start(Cog,DC),class_BookFlightsDeployment_BookFlightsDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('bookFlightsLB', get(vars)),maps:get('getRewardMilesLB', get(vars)),maps:get('updateMilesLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:70--70
    put(vars, (get(vars))#{'bookflightsWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,null,maps:get('bookflightD', get(vars)),null,null,null,null,null,null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:72--72
    put(vars, (get(vars))#{'updateMilesD' => object:new(cog:start(Cog,DC),class_UpdateMilesDeployment_UpdateMilesDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('updateMilesLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:73--73
    put(vars, (get(vars))#{'updateMilesWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,null,null,maps:get('updateMilesD', get(vars)),null,null,null,null,null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:75--75
    put(vars, (get(vars))#{'queryD' => object:new(cog:start(Cog,DC),class_QueryFlightsDeployment_QueryFlightsDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('queryFlightsLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:76--76
    put(vars, (get(vars))#{'queryWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,null,null,null,maps:get('queryD', get(vars)),null,null,null,null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:78--78
    put(vars, (get(vars))#{'viewProfileD' => object:new(cog:start(Cog,DC),class_ViewProfileDeployment_ViewProfileDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('viewProfileLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:79--79
    put(vars, (get(vars))#{'viewProfileWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,null,null,null,null,maps:get('viewProfileD', get(vars)),null,null,null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:81--81
    put(vars, (get(vars))#{'updateProfileD' => object:new(cog:start(Cog,DC),class_UpdateProfileDeployment_UpdateProfileDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('updateProfileLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:82--82
    put(vars, (get(vars))#{'updateProfileWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,null,null,null,null,null,maps:get('updateProfileD', get(vars)),null,null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:84--84
    put(vars, (get(vars))#{'authD' => object:new(cog:start(Cog,DC),class_AuthDeployment_AuthDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('authLB', get(vars)),maps:get('validateIdLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:85--85
    put(vars, (get(vars))#{'authWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,null,null,null,null,null,null,maps:get('authD', get(vars)),null,[]],Cog,[O,DC| Stack])}),
     %% main.abs:87--87
    put(vars, (get(vars))#{'validateId' => object:new(cog:start(Cog,DC),class_ValidateIdDeployment_ValidateIdDeployment,[maps:get('cp', get(vars)),maps:get('prometheus', get(vars)),maps:get('validateIdLB', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:88--88
    put(vars, (get(vars))#{'validateIdWrapper' => object:new(cog:start(Cog,DC),class_ScaleWrapper_Wrapper,[null,null,null,null,null,null,null,null,maps:get('validateId', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:91--91
    put(vars, (get(vars))#{'m1' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"CancelBooking"/utf8>>,maps:get('cancelWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:92--92
    put(vars, (get(vars))#{'m2' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"GetRewardMiles"/utf8>>,maps:get('getRewardWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:93--93
    put(vars, (get(vars))#{'m3' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"UpdateMiles"/utf8>>,maps:get('updateMilesWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:94--94
    put(vars, (get(vars))#{'m4' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"BookFlights"/utf8>>,maps:get('bookflightsWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:95--95
    put(vars, (get(vars))#{'m5' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"QueryFlights"/utf8>>,maps:get('queryWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:96--96
    put(vars, (get(vars))#{'m6' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"ViewProfile"/utf8>>,maps:get('viewProfileWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:97--97
    put(vars, (get(vars))#{'m7' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"UpdateProfile"/utf8>>,maps:get('updateProfileWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:98--98
    put(vars, (get(vars))#{'m8' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"Auth"/utf8>>,maps:get('authWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:99--99
    put(vars, (get(vars))#{'m9' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('prometheus', get(vars)),<<"ValidateId"/utf8>>,maps:get('validateIdWrapper', get(vars)),1,[]],Cog,[O,DC| Stack])}),
     %% main.abs:101--101
    T_1 = object:new(cog:start(Cog,DC),class_WorkloadGenerator_WorkloadGenerator,[200,25,35,maps:get('prometheus', get(vars)),maps:get('authLB', get(vars)),maps:get('viewProfileLB', get(vars)),maps:get('queryFlightsLB', get(vars)),maps:get('updateProfileLB', get(vars)),maps:get('bookFlightsLB', get(vars)),maps:get('cancelBookingLB', get(vars)),[]],Cog,[O,DC| Stack]),
    T_1.

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    runtime:start_link([m_Main]).

stop(_State) ->
    ok.
