-module(class_Architecture_CancelBooking).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"CancelBookingInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Architecture_CancelBooking,'prometheus'=null,'getRewardMiles'=null,'updateMiles'=null}).
'init_internal'()->
    #state{}.

 %% architecture.abs:80
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
 %% architecture.abs:80
'get_val_internal'(#state{'getRewardMiles'=G},'getRewardMiles')->
    object:register_read('getRewardMiles'),
    G;
 %% architecture.abs:80
'get_val_internal'(#state{'updateMiles'=G},'updateMiles')->
    object:register_read('updateMiles'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% architecture.abs:80
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V};
 %% architecture.abs:80
'set_val_internal'(S,'getRewardMiles',V)->
    object:register_write('getRewardMiles'),
    S#state{'getRewardMiles'=V};
 %% architecture.abs:80
'set_val_internal'(S,'updateMiles',V)->
    object:register_write('updateMiles'),
    S#state{'updateMiles'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'prometheus', S#state.'prometheus' }
        , { 'getRewardMiles', S#state.'getRewardMiles' }
        , { 'updateMiles', S#state.'updateMiles' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_prometheus,P_getRewardMiles,P_updateMiles,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'prometheus',P_prometheus)),
    put(this, C:set_val_internal(get(this),'getRewardMiles',P_getRewardMiles)),
    put(this, C:set_val_internal(get(this),'updateMiles',P_updateMiles)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% architecture.abs:81
 %% architecture.abs:81
'm_request'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_balancer_0,V_start_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'balancer' => V_balancer_0,
 'start' => V_start_0 }),
    try
         %% architecture.abs:82--82
        cog:block_current_task_for_cpu(Cog, rationals:rdiv(( rationals:mul(( rationals:mul(m_Param_funs:f_speed_per_core(Cog,Stack),m_Param_funs:f_time_unit_to_sec(Cog,Stack))) ,2032)) ,m_Param_funs:f_cancel_booking_MCL(Cog,Stack)) ,[O,DC| Stack]),
        skip,
         %% architecture.abs:83--83
        put(vars, (get(vars))#{'stop' => m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])}),
         %% architecture.abs:84--84
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"latency"/utf8>>,<<"CancelBooking"/utf8>>,( rationals:sub(maps:get('stop', get(vars)),maps:get('start', get(vars)))) ,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% architecture.abs:85--85
        T_2 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"completed"/utf8>>,<<"CancelBooking"/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_2,
         %% architecture.abs:86--86
        put(vars, (get(vars))#{'res' => dataFailure}),
         %% architecture.abs:87--87
        put(vars, (get(vars))#{'tmp620532131' => cog:create_task(C:get_val_internal(get(this), 'getRewardMiles'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% architecture.abs:87--87
        future:await(maps:get('tmp620532131', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% architecture.abs:87--87
        put(vars, (get(vars))#{'miles' => future:get_blocking(maps:get('tmp620532131', get(vars)), Cog, [O,DC| Stack])}),
         %% architecture.abs:88--88
        case maps:get('miles', get(vars)) of
            {dataJust,V_fut_0}->
                 %% architecture.abs:90--90
                future:await(V_fut_0, Cog, [O,DC,V_fut_0| Stack]),
                ok,
                 %% architecture.abs:91--91
                put(vars, (get(vars))#{'res' := future:get_after_await(V_fut_0, Cog)});
            _->
                 %% architecture.abs:93--93
                skip
        end,
         %% architecture.abs:95--95
        put(vars, (get(vars))#{'tmp1137141072' => cog:create_task(C:get_val_internal(get(this), 'updateMiles'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% architecture.abs:95--95
        future:await(maps:get('tmp1137141072', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% architecture.abs:95--95
        put(vars, (get(vars))#{'update' => future:get_blocking(maps:get('tmp1137141072', get(vars)), Cog, [O,DC| Stack])}),
         %% architecture.abs:96--96
        case maps:get('update', get(vars)) of
            {dataJust,V_fut_1}->
                 %% architecture.abs:98--98
                future:await(V_fut_1, Cog, [O,DC,V_fut_1| Stack]),
                ok,
                 %% architecture.abs:99--99
                case (not cmp:eq(maps:get('res', get(vars)),dataFailure)) of
                    true ->  %% architecture.abs:99--99
                    put(vars, (get(vars))#{'res' := future:get_after_await(V_fut_1, Cog)});
                    false ->                 ok
                end;
            _->
                 %% architecture.abs:101--101
                skip
        end,
         %% architecture.abs:103--103
        put(vars, (get(vars))#{'tmp1892922524' => cog:create_task(C:get_val_internal(get(this), 'updateMiles'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% architecture.abs:103--103
        future:await(maps:get('tmp1892922524', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% architecture.abs:103--103
        put(vars, (get(vars))#{'update' := future:get_blocking(maps:get('tmp1892922524', get(vars)), Cog, [O,DC| Stack])}),
         %% architecture.abs:104--104
        case maps:get('update', get(vars)) of
            {dataJust,V_fut_2}->
                 %% architecture.abs:106--106
                future:await(V_fut_2, Cog, [O,DC,V_fut_2| Stack]),
                ok,
                 %% architecture.abs:107--107
                case (not cmp:eq(maps:get('res', get(vars)),dataFailure)) of
                    true ->  %% architecture.abs:107--107
                    put(vars, (get(vars))#{'res' := future:get_after_await(V_fut_2, Cog)});
                    false ->                 ok
                end;
            _->
                 %% architecture.abs:109--109
                skip
        end,
         %% architecture.abs:111--111
        T_3 = cog:create_task(maps:get('balancer', get(vars)),'m_removeMessage',[[]],#task_info{method= <<"removeMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_3,
         %% architecture.abs:112--112
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method request and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
