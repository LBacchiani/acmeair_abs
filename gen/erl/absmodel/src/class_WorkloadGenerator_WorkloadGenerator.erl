-module(class_WorkloadGenerator_WorkloadGenerator).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"WorkloadGeneratorInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_WorkloadGenerator_WorkloadGenerator,'period'=null,'mod'=null,'shift'=null,'prometheus'=null,'auth'=null,'viewProfile'=null,'query'=null,'updateProfile'=null,'book'=null,'cancel'=null,'time'=null,'users'=null,'userID'=null}).
'init_internal'()->
    #state{}.

 %% workload_generator.abs:12
'get_val_internal'(#state{'period'=G},'period')->
    object:register_read('period'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'mod'=G},'mod')->
    object:register_read('mod'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'shift'=G},'shift')->
    object:register_read('shift'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'auth'=G},'auth')->
    object:register_read('auth'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'viewProfile'=G},'viewProfile')->
    object:register_read('viewProfile'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'query'=G},'query')->
    object:register_read('query'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'updateProfile'=G},'updateProfile')->
    object:register_read('updateProfile'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'book'=G},'book')->
    object:register_read('book'),
    G;
 %% workload_generator.abs:12
'get_val_internal'(#state{'cancel'=G},'cancel')->
    object:register_read('cancel'),
    G;
 %% workload_generator.abs:14
'get_val_internal'(#state{'time'=G},'time')->
    object:register_read('time'),
    G;
 %% workload_generator.abs:15
'get_val_internal'(#state{'users'=G},'users')->
    object:register_read('users'),
    G;
 %% workload_generator.abs:16
'get_val_internal'(#state{'userID'=G},'userID')->
    object:register_read('userID'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% workload_generator.abs:12
'set_val_internal'(S,'period',V)->
    object:register_write('period'),
    S#state{'period'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'mod',V)->
    object:register_write('mod'),
    S#state{'mod'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'shift',V)->
    object:register_write('shift'),
    S#state{'shift'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'auth',V)->
    object:register_write('auth'),
    S#state{'auth'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'viewProfile',V)->
    object:register_write('viewProfile'),
    S#state{'viewProfile'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'query',V)->
    object:register_write('query'),
    S#state{'query'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'updateProfile',V)->
    object:register_write('updateProfile'),
    S#state{'updateProfile'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'book',V)->
    object:register_write('book'),
    S#state{'book'=V};
 %% workload_generator.abs:12
'set_val_internal'(S,'cancel',V)->
    object:register_write('cancel'),
    S#state{'cancel'=V};
 %% workload_generator.abs:14
'set_val_internal'(S,'time',V)->
    object:register_write('time'),
    S#state{'time'=V};
 %% workload_generator.abs:15
'set_val_internal'(S,'users',V)->
    object:register_write('users'),
    S#state{'users'=V};
 %% workload_generator.abs:16
'set_val_internal'(S,'userID',V)->
    object:register_write('userID'),
    S#state{'userID'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'period', S#state.'period' }
        , { 'mod', S#state.'mod' }
        , { 'shift', S#state.'shift' }
        , { 'prometheus', S#state.'prometheus' }
        , { 'auth', S#state.'auth' }
        , { 'viewProfile', S#state.'viewProfile' }
        , { 'query', S#state.'query' }
        , { 'updateProfile', S#state.'updateProfile' }
        , { 'book', S#state.'book' }
        , { 'cancel', S#state.'cancel' }
        , { 'time', S#state.'time' }
        , { 'users', S#state.'users' }
        , { 'userID', S#state.'userID' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_period,P_mod,P_shift,P_prometheus,P_auth,P_viewProfile,P_query,P_updateProfile,P_book,P_cancel,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'period',P_period)),
    put(this, C:set_val_internal(get(this),'mod',P_mod)),
    put(this, C:set_val_internal(get(this),'shift',P_shift)),
    put(this, C:set_val_internal(get(this),'prometheus',P_prometheus)),
    put(this, C:set_val_internal(get(this),'auth',P_auth)),
    put(this, C:set_val_internal(get(this),'viewProfile',P_viewProfile)),
    put(this, C:set_val_internal(get(this),'query',P_query)),
    put(this, C:set_val_internal(get(this),'updateProfile',P_updateProfile)),
    put(this, C:set_val_internal(get(this),'book',P_book)),
    put(this, C:set_val_internal(get(this),'cancel',P_cancel)),
     %% workload_generator.abs:14--14
    put(this, C:set_val_internal(get(this),'time',0)),
     %% workload_generator.abs:15--15
    put(this, C:set_val_internal(get(this),'users',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% workload_generator.abs:16--16
    put(this, C:set_val_internal(get(this),'userID',0)),
    gc:register_object(O),
    cog:create_task(O,'m_run',[[]],#task_info{method= <<"run"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% workload_generator.abs:18
 %% workload_generator.abs:18
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% workload_generator.abs:19--19
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
                 %% workload_generator.abs:20--20
                put(vars, (get(vars))#{'tmp2067891690' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"completed global"/utf8>>,<<""/utf8>>,[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% workload_generator.abs:20--20
                future:await(maps:get('tmp2067891690', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% workload_generator.abs:20--20
                put(vars, (get(vars))#{'res_throughput' => future:get_blocking(maps:get('tmp2067891690', get(vars)), Cog, [O,DC| Stack])}),
                 %% workload_generator.abs:21--21
                put(vars, (get(vars))#{'tmp426492609' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"request global"/utf8>>,<<""/utf8>>,[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% workload_generator.abs:21--21
                future:await(maps:get('tmp426492609', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% workload_generator.abs:21--21
                put(vars, (get(vars))#{'req_throughput' => future:get_blocking(maps:get('tmp426492609', get(vars)), Cog, [O,DC| Stack])}),
                 %% workload_generator.abs:22--22
                put(vars, (get(vars))#{'inst' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_depl_instances'(Callee,[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_depl_instances'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_depl_instances',[[]],#task_info{method= <<"depl_instances"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% workload_generator.abs:23--23
                T_1 = builtin:println(Cog,iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([<<"[Time: "/utf8>>, builtin:toString(Cog,C:get_val_internal(get(this), 'time'))]), <<" Request: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog, rationals:rdiv(maps:get('req_throughput', get(vars)),m_Param_funs:f_user_generation_window(Cog,[O,DC| Stack])) ))]), <<" Response: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog, rationals:rdiv(maps:get('res_throughput', get(vars)),m_Param_funs:f_user_generation_window(Cog,[O,DC| Stack])) ))]), <<" User: "/utf8>>]), builtin:toString(Cog,m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack]))]), <<" Instances: "/utf8>>]), builtin:toString(Cog,maps:get('inst', get(vars)))]), <<"]"/utf8>>])),
                T_1,
                 %% workload_generator.abs:24--24
                cog:suspend_current_task_for_duration(Cog,m_Param_funs:f_user_generation_window(Cog,[O,DC| Stack]),m_Param_funs:f_user_generation_window(Cog,[O,DC| Stack]),[O,DC| Stack]),
                ok,
                 %% workload_generator.abs:27--27
                put(this, C:set_val_internal(get(this), 'time',( rationals:add(C:get_val_internal(get(this), 'time'), rationals:rdiv(m_Param_funs:f_user_generation_window(Cog,[O,DC| Stack]),m_Param_funs:f_time_unit_to_sec(Cog,[O,DC| Stack])) )) )),
                 %% workload_generator.abs:28--28
                put(vars, (get(vars))#{'sin_shape' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_sin_taylor'(Callee, rationals:rrem(C:get_val_internal(get(this), 'time'),C:get_val_internal(get(this), 'period')) ,m_Param_funs:f_sin_shape_accuracy(Cog,[O,DC| Stack]),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_x =  rationals:rrem(C:get_val_internal(get(this), 'time'),C:get_val_internal(get(this), 'period')) ,
                        V_terms = m_Param_funs:f_sin_shape_accuracy(Cog,[O,DC| Stack]),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_sin_taylor'(Callee, V_x, V_terms,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_sin_taylor',[ rationals:rrem(C:get_val_internal(get(this), 'time'),C:get_val_internal(get(this), 'period')) ,m_Param_funs:f_sin_shape_accuracy(Cog,[O,DC| Stack]),[]],#task_info{method= <<"sin_taylor"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% workload_generator.abs:29--29
                put(vars, (get(vars))#{'sin_shape' := ( rationals:add(( rationals:mul(maps:get('sin_shape', get(vars)),C:get_val_internal(get(this), 'mod'))) ,C:get_val_internal(get(this), 'shift'))) }),
                 %% workload_generator.abs:30--30
                put(vars, (get(vars))#{'u' => m_Param_funs:f_round(Cog,maps:get('sin_shape', get(vars)),[O,DC| Stack])}),
                 %% workload_generator.abs:31--31
                case cmp:gt(maps:get('u', get(vars)),m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack])) of
                    true ->  %% workload_generator.abs:31--31
                    T_2 = cog:create_task(O,'m_addUsers',[(maps:get('u', get(vars)) - m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack])) ,[]],#task_info{method= <<"addUsers"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                    T_2;
                    false ->                  %% workload_generator.abs:32--32
                case cmp:lt(maps:get('u', get(vars)),m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack])) of
                    true ->  %% workload_generator.abs:32--32
                    T_2 = cog:create_task(O,'m_removeUser',[(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack]) - maps:get('u', get(vars))) ,[]],#task_info{method= <<"removeUser"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                    T_2;
                    false ->                 ok
                end
                end,
            Loop([])  end end)
        ([]),
         %% workload_generator.abs:34--34
        T_1 = cog:create_task(O,'m_removeUser',[m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack]),[]],#task_info{method= <<"removeUser"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_generator.abs:38
 %% workload_generator.abs:38
'm_depl_instances'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% workload_generator.abs:39--39
        put(vars, (get(vars))#{'instances' => 0}),
         %% workload_generator.abs:40--43
        put(vars, (get(vars))#{'tmp2053387251' => m_Param_funs:f_services(Cog,[O,DC| Stack])}),
         %% workload_generator.abs:40--43
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp2053387251', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% workload_generator.abs:40--43
                put(vars, (get(vars))#{'s' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp2053387251', get(vars)),[O,DC| Stack])}),
                 %% workload_generator.abs:40--43
                put(vars, (get(vars))#{'tmp2053387251' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp2053387251', get(vars)),[O,DC| Stack])}),
                 %% workload_generator.abs:41--41
                put(vars, (get(vars))#{'tmp533920109' => cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_getV',[<<"instances"/utf8>>,maps:get('s', get(vars)),[]],#task_info{method= <<"getV"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% workload_generator.abs:41--41
                future:await(maps:get('tmp533920109', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% workload_generator.abs:41--41
                put(vars, (get(vars))#{'i' => future:get_blocking(maps:get('tmp533920109', get(vars)), Cog, [O,DC| Stack])}),
                 %% workload_generator.abs:42--42
                put(vars, (get(vars))#{'instances' := ( rationals:add(maps:get('instances', get(vars)),maps:get('i', get(vars)))) }),
            Loop([])  end end)
        ([]),
         %% workload_generator.abs:44--44
        maps:get('instances', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method depl_instances and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_generator.abs:47
 %% workload_generator.abs:47
'm_addUsers'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_n_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'n' => V_n_0 }),
    try
         %% workload_generator.abs:48--48
        []=(fun Loop ([])->
            case cmp:gt(maps:get('n', get(vars)),0) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% workload_generator.abs:49--49
                put(vars, (get(vars))#{'u' => object:new(cog:start(Cog,DC),class_User_User,[iolist_to_binary([<<"User"/utf8>>, builtin:toString(Cog,C:get_val_internal(get(this), 'userID'))]),C:get_val_internal(get(this), 'prometheus'),C:get_val_internal(get(this), 'auth'),C:get_val_internal(get(this), 'viewProfile'),C:get_val_internal(get(this), 'query'),C:get_val_internal(get(this), 'updateProfile'),C:get_val_internal(get(this), 'book'),C:get_val_internal(get(this), 'cancel'),[]],Cog,[O,DC| Stack])}),
                 %% workload_generator.abs:50--50
                put(this, C:set_val_internal(get(this), 'users',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'users'),maps:get('u', get(vars)),[O,DC| Stack]))),
                 %% workload_generator.abs:51--51
                put(vars, (get(vars))#{'n' := (maps:get('n', get(vars)) - 1) }),
                 %% workload_generator.abs:52--52
                put(this, C:set_val_internal(get(this), 'userID',(C:get_val_internal(get(this), 'userID') + 1) )),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method addUsers and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_generator.abs:56
 %% workload_generator.abs:56
'm_removeUser'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_n_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'n' => V_n_0 }),
    try
         %% workload_generator.abs:57--57
        []=(fun Loop ([])->
            case cmp:gt(maps:get('n', get(vars)),0) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% workload_generator.abs:58--58
                put(vars, (get(vars))#{'u' => m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack])}),
                 %% workload_generator.abs:59--59
                T_1 = cog:create_task(maps:get('u', get(vars)),'m_stop',[[]],#task_info{method= <<"stop"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                T_1,
                 %% workload_generator.abs:60--60
                put(this, C:set_val_internal(get(this), 'users',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'users'),[O,DC| Stack]))),
                 %% workload_generator.abs:61--61
                put(vars, (get(vars))#{'n' := (maps:get('n', get(vars)) - 1) }),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method removeUser and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_generator.abs:65
 %% workload_generator.abs:65
'm_sin_taylor'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_x_0,V_terms_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'x' => V_x_0,
 'terms' => V_terms_0 }),
    try
         %% workload_generator.abs:66--66
        put(vars, (get(vars))#{'x' :=  rationals:rdiv(( rationals:mul(m_Param_funs:f_pi(Cog,[O,DC| Stack]),maps:get('x', get(vars)))) ,100) }),
         %% workload_generator.abs:67--67
        put(vars, (get(vars))#{'result' => 0}),
         %% workload_generator.abs:68--68
        put(vars, (get(vars))#{'power' => 1}),
         %% workload_generator.abs:69--69
        put(vars, (get(vars))#{'sign' => 1}),
         %% workload_generator.abs:70--70
        []=(fun Loop ([])->
            case cmp:gt(maps:get('terms', get(vars)),0) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% workload_generator.abs:71--71
                put(vars, (get(vars))#{'result' := ( rationals:add(maps:get('result', get(vars)), rationals:rdiv(( rationals:mul(maps:get('sign', get(vars)),m_ABS_StdLib_funs:f_pow(Cog,maps:get('x', get(vars)),maps:get('power', get(vars)),[O,DC| Stack]))) ,m_Param_funs:f_factorial(Cog,maps:get('power', get(vars)),[O,DC| Stack])) )) }),
                 %% workload_generator.abs:72--72
                put(vars, (get(vars))#{'power' := (maps:get('power', get(vars)) + 2) }),
                 %% workload_generator.abs:73--73
                put(vars, (get(vars))#{'sign' := (maps:get('sign', get(vars)) * -1) }),
                 %% workload_generator.abs:74--74
                put(vars, (get(vars))#{'terms' := ( rationals:sub(maps:get('terms', get(vars)),1)) }),
            Loop([])  end end)
        ([]),
         %% workload_generator.abs:76--76
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method sin_taylor and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
