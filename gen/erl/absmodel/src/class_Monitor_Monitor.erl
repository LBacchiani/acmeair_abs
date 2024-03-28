-module(class_Monitor_Monitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MonitorInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Monitor_Monitor,'prometheus'=null,'serviceName'=null,'wrapper'=null,'baseN'=null,'time'=null,'monitored_inst'=null}).
'init_internal'()->
    #state{}.

 %% monitor.abs:10
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
 %% monitor.abs:10
'get_val_internal'(#state{'serviceName'=G},'serviceName')->
    object:register_read('serviceName'),
    G;
 %% monitor.abs:10
'get_val_internal'(#state{'wrapper'=G},'wrapper')->
    object:register_read('wrapper'),
    G;
 %% monitor.abs:10
'get_val_internal'(#state{'baseN'=G},'baseN')->
    object:register_read('baseN'),
    G;
 %% monitor.abs:11
'get_val_internal'(#state{'time'=G},'time')->
    object:register_read('time'),
    G;
 %% monitor.abs:12
'get_val_internal'(#state{'monitored_inst'=G},'monitored_inst')->
    object:register_read('monitored_inst'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% monitor.abs:10
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V};
 %% monitor.abs:10
'set_val_internal'(S,'serviceName',V)->
    object:register_write('serviceName'),
    S#state{'serviceName'=V};
 %% monitor.abs:10
'set_val_internal'(S,'wrapper',V)->
    object:register_write('wrapper'),
    S#state{'wrapper'=V};
 %% monitor.abs:10
'set_val_internal'(S,'baseN',V)->
    object:register_write('baseN'),
    S#state{'baseN'=V};
 %% monitor.abs:11
'set_val_internal'(S,'time',V)->
    object:register_write('time'),
    S#state{'time'=V};
 %% monitor.abs:12
'set_val_internal'(S,'monitored_inst',V)->
    object:register_write('monitored_inst'),
    S#state{'monitored_inst'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'prometheus', S#state.'prometheus' }
        , { 'serviceName', S#state.'serviceName' }
        , { 'wrapper', S#state.'wrapper' }
        , { 'baseN', S#state.'baseN' }
        , { 'time', S#state.'time' }
        , { 'monitored_inst', S#state.'monitored_inst' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_prometheus,P_serviceName,P_wrapper,P_baseN,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'prometheus',P_prometheus)),
    put(this, C:set_val_internal(get(this),'serviceName',P_serviceName)),
    put(this, C:set_val_internal(get(this),'wrapper',P_wrapper)),
    put(this, C:set_val_internal(get(this),'baseN',P_baseN)),
     %% monitor.abs:11--11
    put(this, C:set_val_internal(get(this),'time', rationals:rdiv(m_Param_funs:f_monitoring_window(Cog,[O,DC| Stack]),m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack])) )),
     %% monitor.abs:12--12
    put(this, C:set_val_internal(get(this),'monitored_inst',C:get_val_internal(get(this), 'baseN'))),
    gc:register_object(O),
    cog:create_task(O,'m_run',[[]],#task_info{method= <<"run"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% monitor.abs:14
 %% monitor.abs:14
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% monitor.abs:15--15
        []=(fun Loop ([])->
            case cmp:le(C:get_val_internal(get(this), 'time'),m_Param_funs:f_simulation_duration(Cog,[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:16--16
                cog:suspend_current_task_for_duration(Cog,m_Param_funs:f_monitoring_window(Cog,[O,DC| Stack]),m_Param_funs:f_monitoring_window(Cog,[O,DC| Stack]),[O,DC| Stack]),
                ok,
                 %% monitor.abs:17--17
                put(vars, (get(vars))#{'tmp1724321304' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"latency"/utf8>>,C:get_val_internal(get(this), 'serviceName'),[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% monitor.abs:17--17
                future:await(maps:get('tmp1724321304', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% monitor.abs:17--17
                put(vars, (get(vars))#{'latency' => future:get_blocking(maps:get('tmp1724321304', get(vars)), Cog, [O,DC| Stack])}),
                 %% monitor.abs:18--18
                put(vars, (get(vars))#{'tmp32130231' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"total request"/utf8>>,C:get_val_internal(get(this), 'serviceName'),[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% monitor.abs:18--18
                future:await(maps:get('tmp32130231', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% monitor.abs:18--18
                put(vars, (get(vars))#{'total_req' => future:get_blocking(maps:get('tmp32130231', get(vars)), Cog, [O,DC| Stack])}),
                 %% monitor.abs:19--19
                put(vars, (get(vars))#{'tmp1213292028' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"request loss"/utf8>>,C:get_val_internal(get(this), 'serviceName'),[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% monitor.abs:19--19
                future:await(maps:get('tmp1213292028', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% monitor.abs:19--19
                put(vars, (get(vars))#{'loss' => future:get_blocking(maps:get('tmp1213292028', get(vars)), Cog, [O,DC| Stack])}),
                 %% monitor.abs:20--20
                put(vars, (get(vars))#{'tmp150098236' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"completed"/utf8>>,C:get_val_internal(get(this), 'serviceName'),[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% monitor.abs:20--20
                future:await(maps:get('tmp150098236', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% monitor.abs:20--20
                put(vars, (get(vars))#{'completed' => future:get_blocking(maps:get('tmp150098236', get(vars)), Cog, [O,DC| Stack])}),
                 %% monitor.abs:21--21
                put(vars, (get(vars))#{'tmp1444624884' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"instances"/utf8>>,C:get_val_internal(get(this), 'serviceName'),[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% monitor.abs:21--21
                future:await(maps:get('tmp1444624884', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% monitor.abs:21--21
                put(vars, (get(vars))#{'instances' => future:get_blocking(maps:get('tmp1444624884', get(vars)), Cog, [O,DC| Stack])}),
                 %% monitor.abs:22--22
                put(vars, (get(vars))#{'tmp92737660' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"waiting"/utf8>>,C:get_val_internal(get(this), 'serviceName'),[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% monitor.abs:22--22
                future:await(maps:get('tmp92737660', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% monitor.abs:22--22
                put(vars, (get(vars))#{'waiting' => future:get_blocking(maps:get('tmp92737660', get(vars)), Cog, [O,DC| Stack])}),
                 %% monitor.abs:23--23
                put(vars, (get(vars))#{'avg_lat' => 0}),
                 %% monitor.abs:24--24
                put(vars, (get(vars))#{'throughput' =>  rationals:rdiv(( rationals:mul(m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack]),maps:get('total_req', get(vars)))) ,m_Param_funs:f_monitoring_window(Cog,[O,DC| Stack])) }),
                 %% monitor.abs:25--25
                put(vars, (get(vars))#{'add_throughput' =>  rationals:rdiv(( rationals:mul(m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack]),( rationals:sub(maps:get('total_req', get(vars)),maps:get('completed', get(vars)))) )) ,m_Param_funs:f_monitoring_window(Cog,[O,DC| Stack])) }),
                 %% monitor.abs:26--26
                put(vars, (get(vars))#{'compl_throughput' =>  rationals:rdiv(( rationals:mul(m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack]),maps:get('completed', get(vars)))) ,m_Param_funs:f_monitoring_window(Cog,[O,DC| Stack])) }),
                 %% monitor.abs:27--27
                case (not cmp:eq(maps:get('completed', get(vars)),0)) of
                    true ->  %% monitor.abs:27--27
                    put(vars, (get(vars))#{'avg_lat' :=  rationals:rdiv(maps:get('latency', get(vars)),maps:get('completed', get(vars))) });
                    false ->                 ok
                end,
                 %% monitor.abs:28--28
                case cmp:eq(m_Param_funs:f_metric_for_scaling(Cog,[O,DC| Stack]),<<"latency"/utf8>>) of
                    true ->  %% monitor.abs:29--29
                    case cmp:gt(maps:get('avg_lat', get(vars)),( rationals:mul(m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack]),m_ABS_StdLib_funs:f_lookupUnsafe(Cog,m_Param_funs:f_latency_threshold(Cog,[O,DC| Stack]),C:get_val_internal(get(this), 'serviceName'),[O,DC| Stack]))) ) of
                        true ->  %% monitor.abs:29--29
                        T_1 = cog:create_task(C:get_val_internal(get(this), 'wrapper'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                        T_1;
                        false ->                      %% monitor.abs:30--30
                    case cmp:lt(maps:get('avg_lat', get(vars)),( rationals:mul(m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack]),m_ABS_StdLib_funs:f_lookupUnsafe(Cog,m_Param_funs:f_latency_threshold(Cog,[O,DC| Stack]),C:get_val_internal(get(this), 'serviceName'),[O,DC| Stack]))) ) of
                        true ->  %% monitor.abs:30--30
                        T_1 = cog:create_task(C:get_val_internal(get(this), 'wrapper'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                        T_1;
                        false ->                     ok
                    end
                    end;
                    false ->                  %% monitor.abs:32--32
                case cmp:eq(m_Param_funs:f_metric_for_scaling(Cog,[O,DC| Stack]),<<"MCL"/utf8>>) of
                    true ->  %% monitor.abs:33--33
                    put(vars, (get(vars))#{'mcl' => m_ABS_StdLib_funs:f_lookupUnsafe(Cog,m_Param_funs:f_serviceMCLs(Cog,[O,DC| Stack]),C:get_val_internal(get(this), 'serviceName'),[O,DC| Stack])}),
                     %% monitor.abs:34--34
                    case cmp:gt(maps:get('add_throughput', get(vars)),0) of
                        true ->  %% monitor.abs:34--34
                        put(vars, (get(vars))#{'throughput' := ( rationals:add(maps:get('throughput', get(vars)),maps:get('add_throughput', get(vars)))) });
                        false ->                     ok
                    end,
                     %% monitor.abs:35--35
                    put(vars, (get(vars))#{'target' => builtin:ceil(Cog,builtin:float(Cog, rationals:rdiv(maps:get('throughput', get(vars)),maps:get('mcl', get(vars))) ))}),
                     %% monitor.abs:37--37
                    case cmp:gt(maps:get('target', get(vars)),maps:get('instances', get(vars))) of
                        true ->  %% monitor.abs:37--37
                        T_1 = cog:create_task(O,'m_scaleUp',[( rationals:sub(maps:get('target', get(vars)),maps:get('instances', get(vars)))) ,[]],#task_info{method= <<"scaleUp"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                        T_1;
                        false ->                      %% monitor.abs:38--38
                    case cmp:lt(maps:get('target', get(vars)),maps:get('instances', get(vars))) of
                        true ->  %% monitor.abs:38--38
                        T_1 = cog:create_task(O,'m_scaleDown',[( rationals:sub(maps:get('instances', get(vars)),maps:get('target', get(vars)))) ,[]],#task_info{method= <<"scaleDown"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                        T_1;
                        false ->                     ok
                    end
                    end;
                    false ->                 ok
                end
                end,
                 %% monitor.abs:41--41
                put(this, C:set_val_internal(get(this), 'time',( rationals:add(C:get_val_internal(get(this), 'time'), rationals:rdiv(m_Param_funs:f_monitoring_window(Cog,[O,DC| Stack]),m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack])) )) )),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:45
 %% monitor.abs:45
'm_scaleUp'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_toDeploy_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'toDeploy' => V_toDeploy_0 }),
    try
         %% monitor.abs:46--46
        []=(fun Loop ([])->
            case (not cmp:eq(maps:get('toDeploy', get(vars)),0)) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:47--47
                T_1 = cog:create_task(C:get_val_internal(get(this), 'wrapper'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                T_1,
                 %% monitor.abs:48--48
                put(vars, (get(vars))#{'toDeploy' := ( rationals:sub(maps:get('toDeploy', get(vars)),1)) }),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method scaleUp and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:52
 %% monitor.abs:52
'm_scaleDown'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_toDeploy_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'toDeploy' => V_toDeploy_0 }),
    try
         %% monitor.abs:53--53
        []=(fun Loop ([])->
            case (not cmp:eq(maps:get('toDeploy', get(vars)),0)) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:54--54
                T_1 = cog:create_task(C:get_val_internal(get(this), 'wrapper'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                T_1,
                 %% monitor.abs:55--55
                put(vars, (get(vars))#{'toDeploy' := ( rationals:sub(maps:get('toDeploy', get(vars)),1)) }),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method scaleDown and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
