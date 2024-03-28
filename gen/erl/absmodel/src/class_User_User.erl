-module(class_User_User).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"UserInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_User_User,'userID'=null,'prometheus'=null,'auth'=null,'viewProfile'=null,'query'=null,'updateProfile'=null,'book'=null,'cancel'=null,'id'=null,'stop'=null}).
'init_internal'()->
    #state{}.

 %% user.abs:14
'get_val_internal'(#state{'userID'=G},'userID')->
    object:register_read('userID'),
    G;
 %% user.abs:14
'get_val_internal'(#state{'prometheus'=G},'prometheus')->
    object:register_read('prometheus'),
    G;
 %% user.abs:14
'get_val_internal'(#state{'auth'=G},'auth')->
    object:register_read('auth'),
    G;
 %% user.abs:14
'get_val_internal'(#state{'viewProfile'=G},'viewProfile')->
    object:register_read('viewProfile'),
    G;
 %% user.abs:14
'get_val_internal'(#state{'query'=G},'query')->
    object:register_read('query'),
    G;
 %% user.abs:14
'get_val_internal'(#state{'updateProfile'=G},'updateProfile')->
    object:register_read('updateProfile'),
    G;
 %% user.abs:14
'get_val_internal'(#state{'book'=G},'book')->
    object:register_read('book'),
    G;
 %% user.abs:14
'get_val_internal'(#state{'cancel'=G},'cancel')->
    object:register_read('cancel'),
    G;
 %% user.abs:16
'get_val_internal'(#state{'id'=G},'id')->
    object:register_read('id'),
    G;
 %% user.abs:17
'get_val_internal'(#state{'stop'=G},'stop')->
    object:register_read('stop'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% user.abs:14
'set_val_internal'(S,'userID',V)->
    object:register_write('userID'),
    S#state{'userID'=V};
 %% user.abs:14
'set_val_internal'(S,'prometheus',V)->
    object:register_write('prometheus'),
    S#state{'prometheus'=V};
 %% user.abs:14
'set_val_internal'(S,'auth',V)->
    object:register_write('auth'),
    S#state{'auth'=V};
 %% user.abs:14
'set_val_internal'(S,'viewProfile',V)->
    object:register_write('viewProfile'),
    S#state{'viewProfile'=V};
 %% user.abs:14
'set_val_internal'(S,'query',V)->
    object:register_write('query'),
    S#state{'query'=V};
 %% user.abs:14
'set_val_internal'(S,'updateProfile',V)->
    object:register_write('updateProfile'),
    S#state{'updateProfile'=V};
 %% user.abs:14
'set_val_internal'(S,'book',V)->
    object:register_write('book'),
    S#state{'book'=V};
 %% user.abs:14
'set_val_internal'(S,'cancel',V)->
    object:register_write('cancel'),
    S#state{'cancel'=V};
 %% user.abs:16
'set_val_internal'(S,'id',V)->
    object:register_write('id'),
    S#state{'id'=V};
 %% user.abs:17
'set_val_internal'(S,'stop',V)->
    object:register_write('stop'),
    S#state{'stop'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'userID', S#state.'userID' }
        , { 'prometheus', S#state.'prometheus' }
        , { 'auth', S#state.'auth' }
        , { 'viewProfile', S#state.'viewProfile' }
        , { 'query', S#state.'query' }
        , { 'updateProfile', S#state.'updateProfile' }
        , { 'book', S#state.'book' }
        , { 'cancel', S#state.'cancel' }
        , { 'id', S#state.'id' }
        , { 'stop', S#state.'stop' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_userID,P_prometheus,P_auth,P_viewProfile,P_query,P_updateProfile,P_book,P_cancel,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'userID',P_userID)),
    put(this, C:set_val_internal(get(this),'prometheus',P_prometheus)),
    put(this, C:set_val_internal(get(this),'auth',P_auth)),
    put(this, C:set_val_internal(get(this),'viewProfile',P_viewProfile)),
    put(this, C:set_val_internal(get(this),'query',P_query)),
    put(this, C:set_val_internal(get(this),'updateProfile',P_updateProfile)),
    put(this, C:set_val_internal(get(this),'book',P_book)),
    put(this, C:set_val_internal(get(this),'cancel',P_cancel)),
     %% user.abs:16--16
    put(this, C:set_val_internal(get(this),'id',0)),
     %% user.abs:17--17
    put(this, C:set_val_internal(get(this),'stop',false)),
    gc:register_object(O),
    cog:create_task(O,'m_run',[[]],#task_info{method= <<"run"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% user.abs:20
 %% user.abs:20
'm_stop'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% user.abs:20--20
        put(this, C:set_val_internal(get(this), 'stop',true)),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method stop and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% user.abs:22
 %% user.abs:22
'm_getId'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% user.abs:22--22
        C:get_val_internal(get(this), 'userID')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getId and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% user.abs:24
 %% user.abs:24
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% user.abs:25--25
        []=(fun Loop ([])->
            case not (C:get_val_internal(get(this), 'stop')) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% user.abs:26--26
                put(vars, (get(vars))#{'think' => builtin:random(Cog,4)}),
                 %% user.abs:27--27
                cog:suspend_current_task_for_duration(Cog,maps:get('think', get(vars)),maps:get('think', get(vars)),[O,DC| Stack]),
                ok,
                 %% user.abs:28--28
                put(vars, (get(vars))#{'tmp1570423295' => cog:create_task(O,'m_logic',[[]],#task_info{method= <<"logic"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% user.abs:28--28
                future:await(maps:get('tmp1570423295', get(vars)), Cog, [O,DC| Stack]),
                ok,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% user.abs:32
 %% user.abs:32
'm_logic'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% user.abs:33--33
        T_1 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"request global"/utf8>>,<<""/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% user.abs:34--34
        put(vars, (get(vars))#{'completed' => false}),
         %% user.abs:35--35
        put(vars, (get(vars))#{'tmp1380026145' => cog:create_task(C:get_val_internal(get(this), 'auth'),'m_request',[C:get_val_internal(get(this), 'userID'),[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:35--35
        future:await(maps:get('tmp1380026145', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:35--35
        put(vars, (get(vars))#{'req' => future:get_blocking(maps:get('tmp1380026145', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:36--36
        put(vars, (get(vars))#{'tmp1878555109' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:36--36
        future:await(maps:get('tmp1878555109', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:36--36
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp1878555109', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:38--38
        put(vars, (get(vars))#{'tmp1887496444' => cog:create_task(C:get_val_internal(get(this), 'viewProfile'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:38--38
        future:await(maps:get('tmp1887496444', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:38--38
        put(vars, (get(vars))#{'req' := future:get_blocking(maps:get('tmp1887496444', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:39--39
        put(vars, (get(vars))#{'tmp2073971242' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:39--39
        future:await(maps:get('tmp2073971242', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:39--39
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp2073971242', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:40--40
        put(vars, (get(vars))#{'tmp632857335' => cog:create_task(C:get_val_internal(get(this), 'updateProfile'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:40--40
        future:await(maps:get('tmp632857335', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:40--40
        put(vars, (get(vars))#{'req' := future:get_blocking(maps:get('tmp632857335', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:41--41
        put(vars, (get(vars))#{'tmp161730804' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:41--41
        future:await(maps:get('tmp161730804', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:41--41
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp161730804', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:42--42
        put(vars, (get(vars))#{'tmp2115178036' => cog:create_task(C:get_val_internal(get(this), 'viewProfile'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:42--42
        future:await(maps:get('tmp2115178036', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:42--42
        put(vars, (get(vars))#{'req' := future:get_blocking(maps:get('tmp2115178036', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:43--43
        put(vars, (get(vars))#{'tmp2010498246' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:43--43
        future:await(maps:get('tmp2010498246', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:43--43
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp2010498246', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:47--47
        put(vars, (get(vars))#{'tmp387608529' => cog:create_task(C:get_val_internal(get(this), 'query'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:47--47
        future:await(maps:get('tmp387608529', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:47--47
        put(vars, (get(vars))#{'req' := future:get_blocking(maps:get('tmp387608529', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:48--48
        put(vars, (get(vars))#{'tmp11086262' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:48--48
        future:await(maps:get('tmp11086262', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:48--48
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp11086262', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:52--52
        put(vars, (get(vars))#{'tmp1722672441' => cog:create_task(C:get_val_internal(get(this), 'book'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:52--52
        future:await(maps:get('tmp1722672441', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:52--52
        put(vars, (get(vars))#{'req' := future:get_blocking(maps:get('tmp1722672441', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:53--53
        put(vars, (get(vars))#{'tmp1057484510' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:53--53
        future:await(maps:get('tmp1057484510', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:53--53
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp1057484510', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:56--56
        put(vars, (get(vars))#{'tmp2066180616' => cog:create_task(C:get_val_internal(get(this), 'cancel'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:56--56
        future:await(maps:get('tmp2066180616', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:56--56
        put(vars, (get(vars))#{'req' := future:get_blocking(maps:get('tmp2066180616', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:57--57
        put(vars, (get(vars))#{'tmp847910979' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:57--57
        future:await(maps:get('tmp847910979', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:57--57
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp847910979', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:58--58
        put(vars, (get(vars))#{'tmp990361350' => cog:create_task(C:get_val_internal(get(this), 'cancel'),'m_request',[[]],#task_info{method= <<"request"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:58--58
        future:await(maps:get('tmp990361350', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:58--58
        put(vars, (get(vars))#{'req' := future:get_blocking(maps:get('tmp990361350', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:59--59
        put(vars, (get(vars))#{'tmp997646246' => cog:create_task(O,'m_wait_for',[maps:get('req', get(vars)),[]],#task_info{method= <<"wait_for"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
         %% user.abs:59--59
        future:await(maps:get('tmp997646246', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% user.abs:59--59
        put(vars, (get(vars))#{'completed' := future:get_blocking(maps:get('tmp997646246', get(vars)), Cog, [O,DC| Stack])}),
         %% user.abs:61--61
        case maps:get('completed', get(vars)) of
            true ->  %% user.abs:61--61
            T_2 = cog:create_task(C:get_val_internal(get(this), 'prometheus'),'m_push',[<<"completed global"/utf8>>,<<""/utf8>>,1,[]],#task_info{method= <<"push"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_2;
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method logic and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% user.abs:64
 %% user.abs:64
'm_wait_for'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_req_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'req' => V_req_0 }),
    try
         %% user.abs:65--65
        put(vars, (get(vars))#{'res' => dataFailure}),
         %% user.abs:66--66
        case maps:get('req', get(vars)) of
            {dataJust,V_fut_0}->
                 %% user.abs:68--68
                future:await(V_fut_0, Cog, [O,DC,V_fut_0| Stack]),
                ok,
                 %% user.abs:69--69
                put(vars, (get(vars))#{'res' := future:get_after_await(V_fut_0, Cog)});
            _->
                 %% user.abs:71--71
                skip
        end,
         %% user.abs:73--73
        ((not cmp:eq(maps:get('req', get(vars)),dataNothing))) and ((not cmp:eq(maps:get('res', get(vars)),dataFailure)))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method wait_for and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% user.abs:76
 %% user.abs:76
'm_think_time'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% user.abs:77--77
        put(vars, (get(vars))#{'uniform_random_number' =>  rationals:rdiv(builtin:random(Cog,1000000000),1000000000) }),
         %% user.abs:78--78
        put(vars, (get(vars))#{'random_exponential' => ( rationals:mul(( - m_Param_funs:f_scale(Cog,[O,DC| Stack])),builtin:rat(Cog,builtin:log(Cog,builtin:float(Cog,maps:get('uniform_random_number', get(vars))))))) }),
         %% user.abs:79--79
         rationals:rdiv(maps:get('random_exponential', get(vars)),1000) 
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method think_time and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
